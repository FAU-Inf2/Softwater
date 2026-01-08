import subprocess
import tempfile
import os
import argparse

# /usr/bin/lldb

class colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    BLUE = '\033[94m'
    RESET = '\033[0m'


def run_lldb(key_path, filename, lldb_path):

    watermarks = []
    with open(key_path, 'r') as file:
        for line in file:
            s_values = line.split()
            # Convert each value to the desired data type if needed
            values = [int(value) if value.isdigit() else value for value in s_values]
            watermarks.append(values)
    count = 0

    print(watermarks)
    #print()
    for watermark in watermarks:
        line_nr = watermark[0]
        column_nr = watermark[1]
        steps = watermark[2]
        var_name = watermark[3]
        expected_res = watermark[4]

        if (steps > 50000):
            print(colors.BLUE + "SKIPPED" + colors.RESET)
            break

        try:
            #print("line: " + str(line_nr) + " column: " + str(column_nr) + " name: " + var_name + " steps: " + str(steps) + " res: " + str(expected_res))

            cmd_str = "breakpoint set --line " + str(line_nr) + " --column " + str(column_nr) + "\nrun\n"
            for _ in range(steps - 1):
                #cmd_str += f"breakpoint set --line {line_nr} --column {column_nr}\n"  # Set the breakpoint again
                cmd_str += "c\n"  # Continue to the next breakpoi
            cmd_str += "frame variable " + var_name + "\nexit\n"
            with tempfile.NamedTemporaryFile(mode='w', delete=False) as script_file:
                script_file.write(cmd_str)
                script_file_path = script_file.name

            cmd = [lldb_path, "--batch", "--source", script_file_path, filename]
            process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
            output, errors = process.communicate()

            #print("1---------")
            #print(output)
            #print("1---------")

            # Print any output or errors
            if output:
                #print("----")
                # print(output)
                #print("Watermark found at loop line " + str(line_nr) + " at " + str(steps) + "th iteration:")
                try:
                    variable_output = output.split(f"{var_name} = ")[1].split("\n")[0]
                except Exception as e:
                    print(e)
                #print("output: " + variable_output)
                if variable_output == "<variable not available>":
                    #print(var_name + " = <variable not available>\n")
                    continue
                #print(f"{var_name} = {variable_output}")
                if int(variable_output) == expected_res:
                    count += 1
                    print(colors.GREEN + "WATERMARK CORRECT" + colors.RESET)
                else:
                    print(colors.RED + "WATERMARK WRONG" + colors.RESET)
                    #print("Should be " + str(expected_res))

            os.unlink(script_file_path)



        except Exception as e:
            print(colors.RED + "WATERMARK WRONG" + colors.RESET)
            #print("Try Manually")

    print("--------------------")
    if count == len(watermarks):
        print(colors.GREEN + "SUCCESS" + colors.RESET)
        print(colors.GREEN + f"{count}/{len(watermarks)} found" + colors.RESET)
    else:
        print(colors.RED + "FAILURE" + colors.RESET)
        print(colors.RED + f"{count}/{len(watermarks)} watermarks found" + colors.RESET)
    print("--------------------")


parser = argparse.ArgumentParser(description='Parse arguments')
parser.add_argument('path_lldb', type=str, help='Path to lldb installation')
parser.add_argument('path_exe', type=str, help='Path to program')
parser.add_argument('path_key', type=str, help='Path to key')
args = parser.parse_args()
exe = args.path_exe
key = args.path_key
run_lldb(key, exe, args.path_lldb)
