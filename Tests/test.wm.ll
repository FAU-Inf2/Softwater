; ModuleID = 'almabench.ll'
source_filename = "/home/schwarzbeck/Documents/Softwater/attackers/Benchmarks/almabench/almabench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x3FD8C637FD3B6253, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FE725849423E3E0, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF000011136AEF5, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF860FD96F0D223, double 3.000000e-10, double 0.000000e+00], [3 x double] [double 0x4014CF7737365089, double 1.913200e-06, double -3.900000e-09], [3 x double] [double 0x40231C1D0EBB7C0F, double -2.138960e-05, double 4.440000e-08], [3 x double] [double 0x403337EC14C35EFA, double -3.716000e-07, double 0x3E7A47A3038502A4], [3 x double] [double 0x403E1C425059FB17, double -1.663500e-06, double 6.860000e-08]], align 16
@dlm = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x406F88076B035926, double 0x41F40BBCADEE3CB4, double -1.927890e+00], [3 x double] [double 0x4066BF5A874FEAFA, double 0x41DF6432F5157881, double 5.938100e-01], [3 x double] [double 0x40591DDA6DBF7622, double 0x41D34FC2F3B56502, double -2.044110e+00], [3 x double] [double 0x407636ED90F7B482, double 0x41C4890A4B784DFD, double 9.426400e-01], [3 x double] [double 0x40412CFE90EA1D96, double 0x419A0C7E6F1EA0BA, double 0xC03E9A915379FA98], [3 x double] [double 0x404909E9B1DFE17D, double 0x4184FA9E14756430, double 0x4052E76ED677707A], [3 x double] [double 0x4073A0E14D09C902, double 0x416D6BA57E0EFDCA, double -1.750830e+00], [3 x double] [double 0x4073059422411D82, double 0x415E0127CD46B26C, double 2.110300e-01]], align 16
@e = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x3FCA52242A37D430, double 0x3F2ABF4B9459E7F4, double -2.834900e-06], [3 x double] [double 0x3F7BBCDE77820827, double 0xBF3F4DAC25FB4BC2, double 9.812700e-06], [3 x double] [double 0x3F911C1175CC9F7B, double 0xBF3B8C8FA536F731, double -1.267340e-05], [3 x double] [double 0x3FB7E91AD74BF5B0, double 0x3F4DA66143B5E407, double -8.064100e-06], [3 x double] [double 0x3FA8D4B857E48742, double 0x3F5ABE2B9A18B7B5, double -4.713660e-05], [3 x double] [double 0x3FAC70CE5FA41E66, double 0xBF6C6594A86FD58E, double -6.436390e-05], [3 x double] [double 0x3FA7BF479022D287, double 0xBF31E2FE6AE927D8, double 7.891300e-06], [3 x double] [double 0x3F835D88E0FE76D8, double 6.032630e-05, double 0.000000e+00]], align 16
@pi = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x40535D310DE9F882, double 0x40B6571DAB9F559B, double -4.830160e+00], [3 x double] [double 0x40607209DADFB507, double 0x4065EF9096BB98C8, double 0xC07F27B59DDC1E79], [3 x double] [double 0x4059BBFD82CD2461, double 0x40C6AE2D2BD3C361, double 0x404AA34C6E6D9BE5], [3 x double] [double 0x407500F6B7DFD5BE, double 0x40CF363AC3222920, double -6.232800e+01], [3 x double] [double 0x402CA993F265B897, double 0x40BE4EC06AD2DCB1, double 0x40703F599ED7C6FC], [3 x double] [double 0x405743A9C7642D26, double 0x40D3EADFA415F45E, double 0x4067C84DFCE3150E], [3 x double] [double 0x4065A02B58283528, double 0x40A91F1FF04577D9, double 0xC0410BE37DE939EB], [3 x double] [double 0x40480F65305B6785, double 0x40906AE060FE4799, double 0x403B65ACEEE0F3CB]], align 16
@dinc = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x401C051B1D92B7FE, double 0xC06AC83387160957, double 2.897700e-01], [3 x double] [double 0x400B28447E34386C, double 0xC03ED828A1DFB939, double 0xC0275B52007DD441], [3 x double] [double 0.000000e+00, double 0x407D5F90F51AC9B0, double -3.350530e+00], [3 x double] [double 0x3FFD987ACB2252BB, double 0xC072551355475A32, double -8.118300e+00], [3 x double] [double 0x3FF4DA2E7A10E830, double 0xC051E3C504816F00, double 0x4027E7EBAF102364], [3 x double] [double 0x4003E939471E778F, double 0x4056F686594AF4F1, double 0xC031A989374BC6A8], [3 x double] [double 0x3FE8BE07677D67B5, double 0xC04E5D15DF6555C5, double 1.257590e+00], [3 x double] [double 0x3FFC51B9CE9853F4, double 0x40203F251C193B3A, double 8.135000e-02]], align 16
@omega = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double 0x40482A5AB400A313, double 0xC0B1A3379F01B867, double 0xC03FCC8605681ECD], [3 x double] [double 0x40532B83CFF8FC2B, double 0xC0C38C3DA31A4BDC, double 0xC049A9BEF49CF56F], [3 x double] [double 0x4065DBF10E4FF9E8, double 0xC0C0F3A29A804966, double 0x402EAF0ED3D859C9], [3 x double] [double 0x4048C76F992A88EB, double 0xC0C4BE7350092CCF, double 0xC06CD25F84CAD57C], [3 x double] [double 0x40591DB8D838BBB3, double 0x40B8DA091DBCA969, double 0x4074685935FC3B4F], [3 x double] [double 0x405C6A9797E1B38F, double 0xC0C20C1986983516, double 0xC0508F320D9945B7], [3 x double] [double 0x405280619982C872, double 0x40A4DA4CF80DC337, double 0x40623E1187E7C06E], [3 x double] [double 0x40607916FEBF632D, double 0xC06BBE2EDBB59DDC, double -7.872800e-01]], align 16
@kp = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double 6.961300e+04, double 7.564500e+04, double 8.830600e+04, double 5.989900e+04, double 1.574600e+04, double 7.108700e+04, double 1.421730e+05, double 3.086000e+03, double 0.000000e+00], [9 x double] [double 2.186300e+04, double 3.279400e+04, double 2.693400e+04, double 1.093100e+04, double 2.625000e+04, double 4.372500e+04, double 5.386700e+04, double 2.893900e+04, double 0.000000e+00], [9 x double] [double 1.600200e+04, double 2.186300e+04, double 3.200400e+04, double 1.093100e+04, double 1.452900e+04, double 1.636800e+04, double 1.531800e+04, double 3.279400e+04, double 0.000000e+00], [9 x double] [double 6.345000e+03, double 7.818000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 1.416300e+04, double 1.107000e+03, double 4.872000e+03, double 0.000000e+00], [9 x double] [double 1.760000e+03, double 1.454000e+03, double 1.167000e+03, double 8.800000e+02, double 2.870000e+02, double 2.640000e+03, double 1.900000e+01, double 2.047000e+03, double 1.454000e+03], [9 x double] [double 5.740000e+02, double 0.000000e+00, double 8.800000e+02, double 2.870000e+02, double 1.900000e+01, double 1.760000e+03, double 1.167000e+03, double 3.060000e+02, double 5.740000e+02], [9 x double] [double 2.040000e+02, double 0.000000e+00, double 1.770000e+02, double 1.265000e+03, double 4.000000e+00, double 3.850000e+02, double 2.000000e+02, double 2.080000e+02, double 2.040000e+02], [9 x double] [double 0.000000e+00, double 1.020000e+02, double 1.060000e+02, double 4.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 0.000000e+00]], align 16
@kq = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double 3.086000e+03, double 1.574600e+04, double 6.961300e+04, double 5.989900e+04, double 7.564500e+04, double 8.830600e+04, double 1.266100e+04, double 2.658000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.186300e+04, double 3.279400e+04, double 1.093100e+04, double 7.300000e+01, double 4.387000e+03, double 2.693400e+04, double 1.473000e+03, double 2.157000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 1.600200e+04, double 2.186300e+04, double 1.093100e+04, double 1.473000e+03, double 3.200400e+04, double 4.387000e+03, double 7.300000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 6.345000e+03, double 7.818000e+03, double 1.107000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 5.320000e+02, double 1.000000e+01, double 0.000000e+00], [10 x double] [double 1.900000e+01, double 1.760000e+03, double 1.454000e+03, double 2.870000e+02, double 1.167000e+03, double 8.800000e+02, double 5.740000e+02, double 2.640000e+03, double 1.900000e+01, double 1.454000e+03], [10 x double] [double 1.900000e+01, double 5.740000e+02, double 2.870000e+02, double 3.060000e+02, double 1.760000e+03, double 1.200000e+01, double 3.100000e+01, double 3.800000e+01, double 1.900000e+01, double 5.740000e+02], [10 x double] [double 4.000000e+00, double 2.040000e+02, double 1.770000e+02, double 8.000000e+00, double 3.100000e+01, double 2.000000e+02, double 1.265000e+03, double 1.020000e+02, double 4.000000e+00, double 2.040000e+02], [10 x double] [double 4.000000e+00, double 1.020000e+02, double 1.060000e+02, double 8.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 4.000000e+00, double 1.020000e+02]], align 16
@ca = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double 4.000000e+00, double -1.300000e+01, double 1.100000e+01, double -9.000000e+00, double -9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00], [9 x double] [double -1.560000e+02, double 5.900000e+01, double -4.200000e+01, double 6.000000e+00, double 1.900000e+01, double -2.000000e+01, double -1.000000e+01, double -1.200000e+01, double 0.000000e+00], [9 x double] [double 6.400000e+01, double -1.520000e+02, double 6.200000e+01, double -8.000000e+00, double 3.200000e+01, double -4.100000e+01, double 1.900000e+01, double -1.100000e+01, double 0.000000e+00], [9 x double] [double 1.240000e+02, double 6.210000e+02, double -1.450000e+02, double 2.080000e+02, double 5.400000e+01, double -5.700000e+01, double 3.000000e+01, double 1.500000e+01, double 0.000000e+00], [9 x double] [double -2.343700e+04, double -2.634000e+03, double 6.601000e+03, double 6.259000e+03, double -1.507000e+03, double -1.821000e+03, double 2.620000e+03, double -2.115000e+03, double -1.489000e+03], [9 x double] [double 6.291100e+04, double -1.199190e+05, double 7.933600e+04, double 1.781400e+04, double -2.424100e+04, double 1.206800e+04, double 8.306000e+03, double -4.893000e+03, double 8.902000e+03], [9 x double] [double 3.890610e+05, double -2.621250e+05, double -4.408800e+04, double 8.387000e+03, double -2.297600e+04, double -2.093000e+03, double -6.150000e+02, double -9.720000e+03, double 6.633000e+03], [9 x double] [double -4.122350e+05, double -1.570460e+05, double -3.143000e+04, double 3.781700e+04, double -9.740000e+03, double -1.300000e+01, double -7.449000e+03, double 9.644000e+03, double 0.000000e+00]], align 16
@sa = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double -2.900000e+01, double -1.000000e+00, double 9.000000e+00, double 6.000000e+00, double -6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 0.000000e+00, double 0.000000e+00], [9 x double] [double -4.800000e+01, double -1.250000e+02, double -2.600000e+01, double -3.700000e+01, double 1.800000e+01, double -1.300000e+01, double -2.000000e+01, double -2.000000e+00, double 0.000000e+00], [9 x double] [double -1.500000e+02, double -4.600000e+01, double 6.800000e+01, double 5.400000e+01, double 1.400000e+01, double 2.400000e+01, double -2.800000e+01, double 2.200000e+01, double 0.000000e+00], [9 x double] [double -6.210000e+02, double 5.320000e+02, double -6.940000e+02, double -2.000000e+01, double 1.920000e+02, double -9.400000e+01, double 7.100000e+01, double -7.300000e+01, double 0.000000e+00], [9 x double] [double -1.461400e+04, double -1.982800e+04, double -5.869000e+03, double 1.881000e+03, double -4.372000e+03, double -2.255000e+03, double 7.820000e+02, double 9.300000e+02, double 9.130000e+02], [9 x double] [double 1.397370e+05, double 0.000000e+00, double 2.466700e+04, double 5.112300e+04, double -5.102000e+03, double 7.429000e+03, double -4.095000e+03, double -1.976000e+03, double -9.566000e+03], [9 x double] [double -1.380810e+05, double 0.000000e+00, double 3.720500e+04, double -4.903900e+04, double -4.190100e+04, double -3.387200e+04, double -2.703700e+04, double -1.247400e+04, double 1.879700e+04], [9 x double] [double 0.000000e+00, double 2.849200e+04, double 1.332360e+05, double 6.965400e+04, double 5.232200e+04, double -4.957700e+04, double -2.643000e+04, double -3.593000e+03, double 0.000000e+00]], align 16
@cl = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double 2.100000e+01, double -9.500000e+01, double -1.570000e+02, double 4.100000e+01, double -5.000000e+00, double 4.200000e+01, double 2.300000e+01, double 3.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.600000e+02, double -3.130000e+02, double -2.350000e+02, double 6.000000e+01, double -7.400000e+01, double -7.600000e+01, double -2.700000e+01, double 3.400000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -3.250000e+02, double -3.220000e+02, double -7.900000e+01, double 2.320000e+02, double -5.200000e+01, double 9.700000e+01, double 5.500000e+01, double -4.100000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.268000e+03, double -9.790000e+02, double 8.020000e+02, double 6.020000e+02, double -6.680000e+02, double -3.300000e+01, double 3.450000e+02, double 2.010000e+02, double -5.500000e+01, double 0.000000e+00], [10 x double] [double 7.610000e+03, double -4.997000e+03, double -7.689000e+03, double -5.841000e+03, double -2.617000e+03, double 1.115000e+03, double -7.480000e+02, double -6.070000e+02, double 6.074000e+03, double 3.540000e+02], [10 x double] [double -1.854900e+04, double 3.012500e+04, double 2.001200e+04, double -7.300000e+02, double 8.240000e+02, double 2.300000e+01, double 1.289000e+03, double -3.520000e+02, double -1.476700e+04, double -2.062000e+03], [10 x double] [double -1.352450e+05, double -1.459400e+04, double 4.197000e+03, double -4.030000e+03, double -5.630000e+03, double -2.898000e+03, double 2.540000e+03, double -3.060000e+02, double 2.939000e+03, double 1.986000e+03], [10 x double] [double 8.994800e+04, double 2.103000e+03, double 8.963000e+03, double 2.695000e+03, double 3.682000e+03, double 1.648000e+03, double 8.660000e+02, double -1.540000e+02, double -1.963000e+03, double -2.830000e+02]], align 16
@sl = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double -3.420000e+02, double 1.360000e+02, double -2.300000e+01, double 6.200000e+01, double 6.600000e+01, double -5.200000e+01, double -3.300000e+01, double 1.700000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 5.240000e+02, double -1.490000e+02, double -3.500000e+01, double 1.170000e+02, double 1.510000e+02, double 1.220000e+02, double -7.100000e+01, double -6.200000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.050000e+02, double -1.370000e+02, double 2.580000e+02, double 3.500000e+01, double -1.160000e+02, double -8.800000e+01, double -1.120000e+02, double -8.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 8.540000e+02, double -2.050000e+02, double -9.360000e+02, double -2.400000e+02, double 1.400000e+02, double -3.410000e+02, double -9.700000e+01, double -2.320000e+02, double 5.360000e+02, double 0.000000e+00], [10 x double] [double -5.698000e+04, double 8.016000e+03, double 1.012000e+03, double 1.448000e+03, double -3.024000e+03, double -3.710000e+03, double 3.180000e+02, double 5.030000e+02, double 3.767000e+03, double 5.770000e+02], [10 x double] [double 1.386060e+05, double -1.347800e+04, double -4.964000e+03, double 1.441000e+03, double -1.319000e+03, double -1.482000e+03, double 4.270000e+02, double 1.236000e+03, double -9.167000e+03, double -1.918000e+03], [10 x double] [double 7.123400e+04, double -4.111600e+04, double 5.334000e+03, double -4.935000e+03, double -1.848000e+03, double 6.600000e+01, double 4.340000e+02, double -1.748000e+03, double 3.780000e+03, double -7.010000e+02], [10 x double] [double -4.764500e+04, double 1.164700e+04, double 2.166000e+03, double 3.194000e+03, double 6.790000e+02, double 0.000000e+00, double -2.440000e+02, double -4.190000e+02, double -2.531000e+03, double 4.800000e+01]], align 16
@amas = internal unnamed_addr constant [8 x double] [double 6.023600e+06, double 0x4118EF2E00000000, double 0x4114131200000000, double 3.098710e+06, double 0x40905D6B851EB852, double 3.498500e+03, double 2.286900e+04, double 1.931400e+04], align 16
@TEST_LOOPS = internal unnamed_addr global i32 0, align 4
@TEST_LENGTH = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %3 = tail call double @llvm.fabs.f64(double %2)
  %4 = fcmp ult double %3, 0x400921FB54442D18
  %5 = fcmp olt double %0, 0.000000e+00
  %6 = select i1 %5, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %7 = fsub double %2, %6
  %8 = select i1 %4, double %2, double %7
  ret double %8
}

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 8149
  br i1 %5, label %split6, label %opaque7

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !11

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split6, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split6
  %367 = call double @anpm.1.27(double 0.000000e+00)
  br label %split

split6:                                           ; preds = %3, %opaque7
  %368 = call i64 @time(ptr null)
  %369 = icmp sgt i64 %368, 6340
  br i1 %369, label %split, label %opaque

opaque7:                                          ; preds = %3
  %370 = call i32 @main.9.47(i32 0, ptr null)
  br label %split6
}

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 12
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call double @anpm.1(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 7739
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.20(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 378
  br i1 %4, label %split5, label %opaque6

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %63, %94
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !16

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !17

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !18

split:                                            ; preds = %split5, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split5
  call void @radecdist.4(ptr null, ptr null)
  br label %split

split5:                                           ; preds = %2, %opaque6
  %123 = call i64 @time(ptr null)
  %124 = icmp sgt i64 %123, 1434
  br i1 %124, label %split, label %opaque

opaque6:                                          ; preds = %2
  %125 = call double @anpm.3.5.12(double 0.000000e+00)
  br label %split5
}

; Function Attrs: nofree noinline nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nocallback nofree noinline nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 3368
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 9676
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.23(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.2(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 8586
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  call void @radecdist(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %11 = call i64 @time(ptr null)
  %12 = icmp sgt i64 %11, 6226
  br i1 %12, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @planetpv.20(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.3(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 7539
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.2(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 8094
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @planetpv.7.18(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.4(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 570
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call double @anpm.3(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 795
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  %30 = call double @anpm.1.8.13(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.3.5(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 6601
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call i32 @main(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 7467
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @radecdist.11(ptr null, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.6(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 2902
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.3.5(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 97
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @radecdist.4.10(ptr null, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.7(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 492
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !19

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  %367 = call double @anpm.6(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %368 = call i64 @time(ptr null)
  %369 = icmp sgt i64 %368, 3317
  br i1 %369, label %split, label %opaque

opaque2:                                          ; preds = %3
  %370 = call i32 @main.9(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.8(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 756
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  call void @planetpv.7(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %11 = call i64 @time(ptr null)
  %12 = icmp sgt i64 %11, 6652
  br i1 %12, label %split, label %opaque

opaque2:                                          ; preds = %1
  %13 = call i32 @main.9(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 280
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !20

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !21

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !22

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call double @anpm.1.8(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 7301
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @radecdist.4.10(ptr null, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.4.10(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 9441
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call i32 @main.9(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 4286
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @radecdist.11(ptr null, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.11(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 9689
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  call void @radecdist.4.10(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %27 = call i64 @time(ptr null)
  %28 = icmp sgt i64 %27, 3865
  br i1 %28, label %split, label %opaque

opaque2:                                          ; preds = %2
  %29 = call double @anpm.3.5.12(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.3.5.12(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 6619
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  call void @radecdist.11(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %11 = call i64 @time(ptr null)
  %12 = icmp sgt i64 %11, 8444
  br i1 %12, label %split, label %opaque

opaque2:                                          ; preds = %1
  %13 = call double @anpm.1.8.13(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.8.13(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 4729
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.3.5.12(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 8440
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call double @anpm.3.5.12.14(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.3.5.12.14(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 8117
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.1.8.13(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 8031
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call double @anpm.1.8.15(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.8.15(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 5771
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.3.5.12.14(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 8097
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @radecdist.11.16(ptr null, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.11.16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 675
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call double @anpm.1.8.15(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 4481
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.7.17(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.7.17(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 8927
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !23

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  call void @radecdist.11.16(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %367 = call i64 @time(ptr null)
  %368 = icmp sgt i64 %367, 709
  br i1 %368, label %split, label %opaque

opaque2:                                          ; preds = %3
  call void @planetpv.7.18(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.7.18(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 7856
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !24

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  call void @planetpv.7.17(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %367 = call i64 @time(ptr null)
  %368 = icmp sgt i64 %367, 4567
  br i1 %368, label %split, label %opaque

opaque2:                                          ; preds = %3
  %369 = call i32 @main.19(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.19(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 2353
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !25

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !26

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !27

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  call void @planetpv.7.18(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %123 = call i64 @time(ptr null)
  %124 = icmp sgt i64 %123, 9497
  br i1 %124, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.20(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.20(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 6965
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !28

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  %367 = call i32 @main.19(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %368 = call i64 @time(ptr null)
  %369 = icmp sgt i64 %368, 4586
  br i1 %369, label %split, label %opaque

opaque2:                                          ; preds = %3
  %370 = call double @anpm.1.21(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.21(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 4683
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  call void @planetpv.20(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %11 = call i64 @time(ptr null)
  %12 = icmp sgt i64 %11, 5306
  br i1 %12, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @radecdist.11.22(ptr null, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.11.22(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 8624
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call double @anpm.1.21(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 6219
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  %30 = call i32 @main.9.23(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9.23(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 2871
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !29

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !30

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !31

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  call void @radecdist.11.22(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %123 = call i64 @time(ptr null)
  %124 = icmp sgt i64 %123, 1528
  br i1 %124, label %split, label %opaque

opaque2:                                          ; preds = %2
  %125 = call double @anpm.25(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.8.24(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 8829
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call i32 @main.9.23(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 5732
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.25(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 19
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.1.8.24(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 9503
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call double @anpm.3.5.12.14.26(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.3.5.12.14.26(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 3368
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.25(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 8270
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call double @anpm.1.27(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.27(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 6715
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.3.5.12.14.26(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 9708
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.19.29(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.20.28(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 723
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !32

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  call void @planetpv(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %367 = call i64 @time(ptr null)
  %368 = icmp sgt i64 %367, 7796
  br i1 %368, label %split, label %opaque

opaque2:                                          ; preds = %3
  %369 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.19.29(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 2245
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !33

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !34

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !35

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  call void @planetpv.20.28(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %123 = call i64 @time(ptr null)
  %124 = icmp sgt i64 %123, 2618
  br i1 %124, label %split, label %opaque

opaque2:                                          ; preds = %2
  %125 = call double @anpm.1.8.30(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.8.30(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 3451
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call i32 @main.19.29(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 2846
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  call void @radecdist.32(ptr null, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.31(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 3555
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !36

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !37

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !38

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call double @anpm.1.8.30(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 2921
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  %126 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @radecdist.32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly initializes((0, 24)) %1) local_unnamed_addr #5 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 7488
  br i1 %4, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %5 = load double, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !9
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8, !tbaa !9
  %15 = load double, ptr %6, align 8, !tbaa !9
  %16 = load double, ptr %0, align 8, !tbaa !9
  %17 = tail call double @atan2(double noundef %15, double noundef %16) #10, !tbaa !5
  %18 = fmul double %17, 0x400E8EC8A4AEACC4
  %19 = fcmp olt double %18, 0.000000e+00
  %20 = fadd double %18, 2.400000e+01
  %21 = select i1 %19, double %20, double %18
  store double %21, ptr %1, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = fdiv double %22, %13
  %24 = tail call double @asin(double noundef %23) #10, !tbaa !5
  %25 = fmul double %24, 0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8, !tbaa !9
  ret void

opaque:                                           ; preds = %split1
  %27 = call i32 @main.31(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %28 = call i64 @time(ptr null)
  %29 = icmp sgt i64 %28, 2379
  br i1 %29, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.20.28.33(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.20.28.33(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 8228
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !39

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  call void @radecdist.32(ptr null, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %367 = call i64 @time(ptr null)
  %368 = icmp sgt i64 %367, 7764
  br i1 %368, label %split, label %opaque

opaque2:                                          ; preds = %3
  %369 = call double @anpm.6.34(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.6.34(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 2350
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  call void @planetpv.20.28.33(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %11 = call i64 @time(ptr null)
  %12 = icmp sgt i64 %11, 9841
  br i1 %12, label %split, label %opaque

opaque2:                                          ; preds = %1
  %13 = call i32 @main.9.23.35(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9.23.35(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 1500
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !40

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !41

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !42

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call double @anpm.6.34(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 5193
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  %126 = call double @anpm.2.36(double 0.000000e+00)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.2.36(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 7764
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call i32 @main.9.23.35(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 7034
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.23.38(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.37(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 4914
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.2.36(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 124
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9.23.38(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 5856
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !43

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !44

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !45

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call double @anpm.37(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 6987
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.7.17.40(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.31.39(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 6491
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !46

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !47

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !48

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call i32 @main.9.23.38(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 3743
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  %126 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.7.17.40(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 8365
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !49

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  %367 = call i32 @main.31.39(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %368 = call i64 @time(ptr null)
  %369 = icmp sgt i64 %368, 2227
  br i1 %369, label %split, label %opaque

opaque2:                                          ; preds = %3
  %370 = call double @anpm.42(double 0.000000e+00)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.41(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 1936
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !50

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !51

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !52

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  call void @planetpv.7.17.40(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %123 = call i64 @time(ptr null)
  %124 = icmp sgt i64 %123, 9859
  br i1 %124, label %split, label %opaque

opaque2:                                          ; preds = %2
  %125 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.42(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 2551
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call i32 @main.41(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 1432
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.23.38.44(i32 0, ptr null)
  br label %split1
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local double @anpm.1.21.43(double noundef %0) local_unnamed_addr #0 {
  %2 = call i64 @time(ptr null)
  %3 = icmp sgt i64 %2, 9228
  br i1 %3, label %split1, label %opaque2

split:                                            ; preds = %split1, %opaque
  %4 = tail call double @fmod(double noundef %0, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 0x400921FB54442D18
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = select i1 %7, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %9 = fsub double %4, %8
  %10 = select i1 %6, double %4, double %9
  ret double %10

opaque:                                           ; preds = %split1
  %11 = call double @anpm.42(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %1, %opaque2
  %12 = call i64 @time(ptr null)
  %13 = icmp sgt i64 %12, 6437
  br i1 %13, label %split, label %opaque

opaque2:                                          ; preds = %1
  %14 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9.23.38.44(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 5407
  br i1 %4, label %split1, label %opaque2

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !53

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !54

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !55

split:                                            ; preds = %split1, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %split1
  %123 = call double @anpm.1.21.43(double 0.000000e+00)
  br label %split

split1:                                           ; preds = %2, %opaque2
  %124 = call i64 @time(ptr null)
  %125 = icmp sgt i64 %124, 3275
  br i1 %125, label %split, label %opaque

opaque2:                                          ; preds = %2
  call void @planetpv.46(ptr null, i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.7.18.45(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 6121
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !56

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  %367 = call i32 @main.9.23.38.44(i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %368 = call i64 @time(ptr null)
  %369 = icmp sgt i64 %368, 1474
  br i1 %369, label %split, label %opaque

opaque2:                                          ; preds = %3
  %370 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @planetpv.46(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = call i64 @time(ptr null)
  %5 = icmp sgt i64 %4, 4395
  br i1 %5, label %split1, label %opaque2

6:                                                ; preds = %6, %split
  %7 = phi i64 [ 0, %split ], [ %59, %6 ]
  %8 = phi double [ %319, %split ], [ %49, %6 ]
  %9 = phi double [ %329, %split ], [ %58, %6 ]
  %10 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %366, %11
  %13 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %7
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = fmul double %366, %14
  %16 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %7
  %17 = load double, ptr %16, align 8, !tbaa !9
  %18 = tail call double @cos(double noundef %12) #10, !tbaa !5
  %19 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %7
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = tail call double @sin(double noundef %12) #10, !tbaa !5
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x3E7AD7F29ABCAF48, double %8)
  %25 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %7
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = tail call double @cos(double noundef %15) #10, !tbaa !5
  %28 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %7
  %29 = load double, ptr %28, align 16, !tbaa !9
  %30 = tail call double @sin(double noundef %15) #10, !tbaa !5
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3E7AD7F29ABCAF48, double %9)
  %34 = or disjoint i64 %7, 1
  %35 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fmul double %366, %36
  %38 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 %34
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fmul double %366, %39
  %41 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = tail call double @cos(double noundef %37) #10, !tbaa !5
  %44 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 %34
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = tail call double @sin(double noundef %37) #10, !tbaa !5
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3E7AD7F29ABCAF48, double %24)
  %50 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 %34
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = tail call double @cos(double noundef %40) #10, !tbaa !5
  %53 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 %34
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = tail call double @sin(double noundef %40) #10, !tbaa !5
  %56 = fmul double %54, %55
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %52, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0x3E7AD7F29ABCAF48, double %33)
  %59 = add nuw nsw i64 %7, 2
  %60 = icmp eq i64 %59, 8
  br i1 %60, label %61, label %6, !llvm.loop !57

61:                                               ; preds = %6
  %62 = tail call double @llvm.fmuladd.f64(double %335, double %310, double %333)
  %63 = tail call double @llvm.fabs.f64(double %346)
  %64 = fsub double %346, %348
  %65 = fcmp ult double %63, 0x400921FB54442D18
  %66 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %311, i64 8
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = fmul double %366, %67
  %69 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %311, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !9
  %71 = tail call double @cos(double noundef %68) #10, !tbaa !5
  %72 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %311, i64 8
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = tail call double @sin(double noundef %68) #10, !tbaa !5
  %75 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 8
  %76 = load double, ptr %75, align 16, !tbaa !9
  %77 = fmul double %366, %76
  %78 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 8
  %79 = load double, ptr %78, align 16, !tbaa !9
  %80 = tail call double @cos(double noundef %77) #10, !tbaa !5
  %81 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 8
  %82 = load double, ptr %81, align 16, !tbaa !9
  %83 = tail call double @sin(double noundef %77) #10, !tbaa !5
  %84 = fmul double %82, %83
  %85 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %84)
  %86 = fmul double %310, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x3E7AD7F29ABCAF48, double %58)
  %88 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %311, i64 9
  %89 = load double, ptr %88, align 8, !tbaa !9
  %90 = fmul double %366, %89
  %91 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %311, i64 9
  %92 = load double, ptr %91, align 8, !tbaa !9
  %93 = tail call double @cos(double noundef %90) #10, !tbaa !5
  %94 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %311, i64 9
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = tail call double @sin(double noundef %90) #10, !tbaa !5
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %97)
  %99 = fmul double %310, %98
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x3E7AD7F29ABCAF48, double %87)
  %101 = tail call double @llvm.fmuladd.f64(double %62, double %310, double %331)
  %102 = select i1 %65, double %346, double %64
  %103 = tail call double @fmod(double noundef %100, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %104 = fsub double %103, %102
  %105 = tail call double @sin(double noundef %104) #10, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %101, double %105, double %104)
  %107 = fneg double %101
  %108 = fsub double %104, %106
  %109 = tail call double @sin(double noundef %106) #10, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %101, double %109, double %108)
  %111 = tail call double @cos(double noundef %106) #10, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %107, double %111, double 1.000000e+00)
  %113 = fdiv double %110, %112
  %114 = fadd double %106, %113
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %115, 0x3D719799812DEA11
  br i1 %116, label %205, label %117

117:                                              ; preds = %61
  %118 = fsub double %104, %114
  %119 = tail call double @sin(double noundef %114) #10, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %101, double %119, double %118)
  %121 = tail call double @cos(double noundef %114) #10, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %107, double %121, double 1.000000e+00)
  %123 = fdiv double %120, %122
  %124 = fadd double %114, %123
  %125 = tail call double @llvm.fabs.f64(double %123)
  %126 = fcmp olt double %125, 0x3D719799812DEA11
  br i1 %126, label %205, label %127

127:                                              ; preds = %117
  %128 = fsub double %104, %124
  %129 = tail call double @sin(double noundef %124) #10, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %101, double %129, double %128)
  %131 = tail call double @cos(double noundef %124) #10, !tbaa !5
  %132 = tail call double @llvm.fmuladd.f64(double %107, double %131, double 1.000000e+00)
  %133 = fdiv double %130, %132
  %134 = fadd double %124, %133
  %135 = tail call double @llvm.fabs.f64(double %133)
  %136 = fcmp olt double %135, 0x3D719799812DEA11
  br i1 %136, label %205, label %137

137:                                              ; preds = %127
  %138 = fsub double %104, %134
  %139 = tail call double @sin(double noundef %134) #10, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %101, double %139, double %138)
  %141 = tail call double @cos(double noundef %134) #10, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %107, double %141, double 1.000000e+00)
  %143 = fdiv double %140, %142
  %144 = fadd double %134, %143
  %145 = tail call double @llvm.fabs.f64(double %143)
  %146 = fcmp olt double %145, 0x3D719799812DEA11
  br i1 %146, label %205, label %147

147:                                              ; preds = %137
  %148 = fsub double %104, %144
  %149 = tail call double @sin(double noundef %144) #10, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %101, double %149, double %148)
  %151 = tail call double @cos(double noundef %144) #10, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %107, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %144, %153
  %155 = tail call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, 0x3D719799812DEA11
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = fsub double %104, %154
  %159 = tail call double @sin(double noundef %154) #10, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %101, double %159, double %158)
  %161 = tail call double @cos(double noundef %154) #10, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %107, double %161, double 1.000000e+00)
  %163 = fdiv double %160, %162
  %164 = fadd double %154, %163
  %165 = tail call double @llvm.fabs.f64(double %163)
  %166 = fcmp olt double %165, 0x3D719799812DEA11
  br i1 %166, label %205, label %167

167:                                              ; preds = %157
  %168 = fsub double %104, %164
  %169 = tail call double @sin(double noundef %164) #10, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %101, double %169, double %168)
  %171 = tail call double @cos(double noundef %164) #10, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %107, double %171, double 1.000000e+00)
  %173 = fdiv double %170, %172
  %174 = fadd double %164, %173
  %175 = tail call double @llvm.fabs.f64(double %173)
  %176 = fcmp olt double %175, 0x3D719799812DEA11
  br i1 %176, label %205, label %177

177:                                              ; preds = %167
  %178 = fsub double %104, %174
  %179 = tail call double @sin(double noundef %174) #10, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %101, double %179, double %178)
  %181 = tail call double @cos(double noundef %174) #10, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %107, double %181, double 1.000000e+00)
  %183 = fdiv double %180, %182
  %184 = fadd double %174, %183
  %185 = tail call double @llvm.fabs.f64(double %183)
  %186 = fcmp olt double %185, 0x3D719799812DEA11
  br i1 %186, label %205, label %187

187:                                              ; preds = %177
  %188 = fsub double %104, %184
  %189 = tail call double @sin(double noundef %184) #10, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %101, double %189, double %188)
  %191 = tail call double @cos(double noundef %184) #10, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %107, double %191, double 1.000000e+00)
  %193 = fdiv double %190, %192
  %194 = fadd double %184, %193
  %195 = tail call double @llvm.fabs.f64(double %193)
  %196 = fcmp olt double %195, 0x3D719799812DEA11
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = fsub double %104, %194
  %199 = tail call double @sin(double noundef %194) #10, !tbaa !5
  %200 = tail call double @llvm.fmuladd.f64(double %101, double %199, double %198)
  %201 = tail call double @cos(double noundef %194) #10, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %107, double %201, double 1.000000e+00)
  %203 = fdiv double %200, %202
  %204 = fadd double %194, %203
  br label %205

205:                                              ; preds = %197, %187, %177, %167, %157, %147, %137, %127, %117, %61
  %206 = phi double [ %114, %61 ], [ %124, %117 ], [ %134, %127 ], [ %144, %137 ], [ %154, %147 ], [ %164, %157 ], [ %174, %167 ], [ %184, %177 ], [ %194, %187 ], [ %204, %197 ]
  %207 = tail call double @llvm.fabs.f64(double %365)
  %208 = fcmp ult double %207, 0x400921FB54442D18
  %209 = fcmp olt double %364, 0.000000e+00
  %210 = select i1 %209, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %211 = fsub double %365, %210
  %212 = select i1 %208, double %365, double %211
  %213 = fmul double %73, %74
  %214 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %213)
  %215 = fmul double %310, %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double 0x3E7AD7F29ABCAF48, double %49)
  %217 = tail call double @llvm.fmuladd.f64(double %354, double %310, double %352)
  %218 = fmul double %310, %217
  %219 = tail call double @llvm.fmuladd.f64(double %350, double 3.600000e+03, double %218)
  %220 = fmul double %219, 0x3ED455A5B2FF8F9D
  %221 = fmul double %206, 5.000000e-01
  %222 = fadd double %101, 1.000000e+00
  %223 = fsub double 1.000000e+00, %101
  %224 = fdiv double %222, %223
  %225 = tail call double @sqrt(double noundef %224) #10, !tbaa !5
  %226 = tail call double @sin(double noundef %221) #10, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @cos(double noundef %221) #10, !tbaa !5
  %229 = tail call double @atan2(double noundef %227, double noundef %228) #10, !tbaa !5
  %230 = fmul double %229, 2.000000e+00
  %231 = tail call double @cos(double noundef %206) #10, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %107, double %231, double 1.000000e+00)
  %233 = fmul double %216, %232
  %234 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %311
  %235 = load double, ptr %234, align 8, !tbaa !9
  %236 = fdiv double 1.000000e+00, %235
  %237 = fadd double %236, 1.000000e+00
  %238 = fmul double %216, %216
  %239 = fmul double %216, %238
  %240 = fdiv double %237, %239
  %241 = tail call double @sqrt(double noundef %240) #10, !tbaa !5
  %242 = fmul double %241, 0x3F919D6D51A6B69A
  %243 = fmul double %220, 5.000000e-01
  %244 = tail call double @sin(double noundef %243) #10, !tbaa !5
  %245 = tail call double @cos(double noundef %212) #10, !tbaa !5
  %246 = fmul double %244, %245
  %247 = tail call double @sin(double noundef %212) #10, !tbaa !5
  %248 = fmul double %244, %247
  %249 = fadd double %102, %230
  %250 = tail call double @sin(double noundef %249) #10, !tbaa !5
  %251 = tail call double @cos(double noundef %249) #10, !tbaa !5
  %252 = fneg double %250
  %253 = fmul double %246, %252
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %251, double %253)
  %255 = fmul double %254, 2.000000e+00
  %256 = tail call double @llvm.fmuladd.f64(double %107, double %101, double 1.000000e+00)
  %257 = tail call double @sqrt(double noundef %256) #10, !tbaa !5
  %258 = fdiv double %216, %257
  %259 = tail call double @cos(double noundef %243) #10, !tbaa !5
  %260 = tail call double @sin(double noundef %102) #10, !tbaa !5
  %261 = tail call double @llvm.fmuladd.f64(double %101, double %260, double %250)
  %262 = fmul double %258, %261
  %263 = tail call double @cos(double noundef %102) #10, !tbaa !5
  %264 = tail call double @llvm.fmuladd.f64(double %101, double %263, double %251)
  %265 = fmul double %258, %264
  %266 = fmul double %248, 2.000000e+00
  %267 = fmul double %246, %266
  %268 = fneg double %255
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %248, double %251)
  %270 = fmul double %233, %269
  %271 = tail call double @llvm.fmuladd.f64(double %255, double %246, double %250)
  %272 = fmul double %233, %271
  %273 = fmul double %259, %268
  %274 = fmul double %233, %273
  store double %270, ptr %2, align 8, !tbaa !9
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = insertelement <2 x double> poison, double %274, i64 0
  %277 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> zeroinitializer
  %278 = fmul <2 x double> %277, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %279 = insertelement <2 x double> poison, double %272, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %278)
  store <2 x double> %281, ptr %275, align 8, !tbaa !9
  %282 = tail call double @llvm.fmuladd.f64(double %266, double %248, double -1.000000e+00)
  %283 = fmul double %267, %265
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %262, double %283)
  %285 = fmul double %242, %284
  %286 = fmul double %246, -2.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %246, double 1.000000e+00)
  %288 = fneg double %262
  %289 = fmul double %267, %288
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %265, double %289)
  %291 = fmul double %242, %290
  %292 = fmul double %259, 2.000000e+00
  %293 = fmul double %246, %265
  %294 = tail call double @llvm.fmuladd.f64(double %248, double %262, double %293)
  %295 = fmul double %292, %294
  %296 = fmul double %242, %295
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %285, ptr %297, align 8, !tbaa !9
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %299 = insertelement <2 x double> poison, double %296, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %300, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %302 = insertelement <2 x double> poison, double %291, i64 0
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> zeroinitializer
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %303, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %301)
  store <2 x double> %304, ptr %298, align 8, !tbaa !9
  ret void

split:                                            ; preds = %split1, %opaque
  %305 = load double, ptr %0, align 8, !tbaa !9
  %306 = fadd double %305, 0xC142B42C80000000
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %308 = load double, ptr %307, align 8, !tbaa !9
  %309 = fadd double %306, %308
  %310 = fdiv double %309, 3.652500e+05
  %311 = sext i32 %1 to i64
  %312 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !9
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %315 = load double, ptr %314, align 8, !tbaa !9
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %317 = load double, ptr %316, align 8, !tbaa !9
  %318 = tail call double @llvm.fmuladd.f64(double %317, double %310, double %315)
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %310, double %313)
  %320 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %311
  %321 = load double, ptr %320, align 8, !tbaa !9
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %323 = load double, ptr %322, align 8, !tbaa !9
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !9
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %310, double %323)
  %327 = fmul double %310, %326
  %328 = tail call double @llvm.fmuladd.f64(double %321, double 3.600000e+03, double %327)
  %329 = fmul double %328, 0x3ED455A5B2FF8F9D
  %330 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %311
  %331 = load double, ptr %330, align 8, !tbaa !9
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %333 = load double, ptr %332, align 8, !tbaa !9
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = load double, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %311
  %337 = load double, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %339 = load double, ptr %338, align 8, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = load double, ptr %340, align 8, !tbaa !9
  %342 = tail call double @llvm.fmuladd.f64(double %341, double %310, double %339)
  %343 = fmul double %310, %342
  %344 = tail call double @llvm.fmuladd.f64(double %337, double 3.600000e+03, double %343)
  %345 = fmul double %344, 0x3ED455A5B2FF8F9D
  %346 = tail call double @fmod(double noundef %345, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %347 = fcmp olt double %345, 0.000000e+00
  %348 = select i1 %347, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %349 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %311
  %350 = load double, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %352 = load double, ptr %351, align 8, !tbaa !9
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %354 = load double, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %311
  %356 = load double, ptr %355, align 8, !tbaa !9
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load double, ptr %357, align 8, !tbaa !9
  %359 = getelementptr inbounds nuw i8, ptr %355, i64 16
  %360 = load double, ptr %359, align 8, !tbaa !9
  %361 = tail call double @llvm.fmuladd.f64(double %360, double %310, double %358)
  %362 = fmul double %310, %361
  %363 = tail call double @llvm.fmuladd.f64(double %356, double 3.600000e+03, double %362)
  %364 = fmul double %363, 0x3ED455A5B2FF8F9D
  %365 = tail call double @fmod(double noundef %364, double noundef 0x401921FB54442D18) #10, !tbaa !5
  %366 = fmul double %310, 0x3FD702A41F2E9970
  br label %6

opaque:                                           ; preds = %split1
  call void @planetpv.7.18.45(ptr null, i32 0, ptr null)
  br label %split

split1:                                           ; preds = %3, %opaque2
  %367 = call i64 @time(ptr null)
  %368 = icmp sgt i64 %367, 8858
  br i1 %368, label %split, label %opaque

opaque2:                                          ; preds = %3
  %369 = call i32 @main.9.47(i32 0, ptr null)
  br label %split1
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local noundef i32 @main.9.47(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  %3 = call i64 @time(ptr null)
  %4 = icmp sgt i64 %3, 6029
  br i1 %4, label %split, label %opaque

5:                                                ; preds = %100
  %6 = load double, ptr %109, align 16, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %10 = load double, ptr %9, align 16, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %12 = load double, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %14 = load double, ptr %13, align 16, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %109, i64 40
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %109, i64 48
  %18 = load double, ptr %17, align 16, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %109, i64 56
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %22 = load double, ptr %21, align 16, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %109, i64 72
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %109, i64 80
  %26 = load double, ptr %25, align 16, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %109, i64 88
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %30 = load double, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %109, i64 104
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %109, i64 112
  %34 = load double, ptr %33, align 16, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %109, i64 120
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %109, i64 128
  %38 = load double, ptr %37, align 16, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %109, i64 136
  %40 = load double, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %109, i64 144
  %42 = load double, ptr %41, align 16, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %109, i64 152
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %109, i64 160
  %46 = load double, ptr %45, align 16, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %109, i64 168
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %109, i64 176
  %50 = load double, ptr %49, align 16, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %109, i64 184
  %52 = load double, ptr %51, align 8, !tbaa !9
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %6, double noundef %8, double noundef %10)
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %12, double noundef %14, double noundef %16)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %18, double noundef %20, double noundef %22)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %24, double noundef %26, double noundef %28)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, double noundef %32, double noundef %34)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %36, double noundef %38, double noundef %40)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42, double noundef %44, double noundef %46)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %48, double noundef %50, double noundef %52)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !13
  %62 = call i32 @fflush(ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %107) #10
  ret i32 0

63:                                               ; preds = %100, %split
  %64 = phi i32 [ %118, %split ], [ %101, %100 ]
  %65 = phi i32 [ %117, %split ], [ %102, %100 ]
  %66 = phi i32 [ 0, %split ], [ %103, %100 ]
  store double 0.000000e+00, ptr %120, align 8, !tbaa !9
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %.preheader, label %100

.preheader:                                       ; preds = %94, %63
  %68 = phi i32 [ %95, %94 ], [ 0, %63 ]
  %69 = phi double [ %70, %94 ], [ 0x4142B42C80000000, %63 ]
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %107, align 16, !tbaa !9
  br label %71

71:                                               ; preds = %71, %.preheader
  %72 = phi i64 [ 0, %.preheader ], [ %92, %71 ]
  %73 = trunc nuw nsw i64 %72 to i32
  call void @planetpv(ptr noundef nonnull %107, i32 noundef %73, ptr noundef nonnull %108)
  %74 = getelementptr inbounds nuw [8 x [3 x double]], ptr %109, i64 0, i64 %72
  %75 = load double, ptr %108, align 16, !tbaa !9
  %76 = load double, ptr %121, align 8, !tbaa !9
  %77 = fmul double %76, %76
  %78 = call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = load double, ptr %122, align 16, !tbaa !9
  %80 = call double @llvm.fmuladd.f64(double %79, double %79, double %78)
  %81 = call double @llvm.sqrt.f64(double %80)
  %82 = getelementptr inbounds nuw i8, ptr %74, i64 16
  store double %81, ptr %82, align 8, !tbaa !9
  %83 = call double @atan2(double noundef %76, double noundef %75) #10, !tbaa !5
  %84 = fmul double %83, 0x400E8EC8A4AEACC4
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fadd double %84, 2.400000e+01
  %87 = select i1 %85, double %86, double %84
  store double %87, ptr %74, align 8, !tbaa !9
  %88 = fdiv double %79, %81
  %89 = call double @asin(double noundef %88) #10, !tbaa !5
  %90 = fmul double %89, 0x404CA5DC1A63C1F8
  %91 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store double %90, ptr %91, align 8, !tbaa !9
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %71, !llvm.loop !58

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr @TEST_LENGTH, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.preheader, label %98, !llvm.loop !59

98:                                               ; preds = %94
  %99 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi i32 [ %99, %98 ], [ %64, %63 ]
  %102 = phi i32 [ %96, %98 ], [ %65, %63 ]
  %103 = add nuw nsw i32 %66, 1
  %104 = icmp slt i32 %103, %101
  br i1 %104, label %63, label %5, !llvm.loop !60

split:                                            ; preds = %2, %opaque
  %105 = alloca [1024 x i8], align 16
  %106 = alloca [1024 x i8], align 16
  %107 = alloca [2 x double], align 16
  %108 = alloca [2 x [3 x double]], align 16
  %109 = alloca [8 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %107) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %109) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %106) #10
  %110 = load ptr, ptr @stdin, align 8, !tbaa !13
  %111 = call ptr @fgets(ptr noundef nonnull %106, i32 noundef 1024, ptr noundef %110)
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #10
  %113 = trunc i64 %112 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %106) #10
  store i32 %113, ptr @TEST_LOOPS, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %105) #10
  %114 = load ptr, ptr @stdin, align 8, !tbaa !13
  %115 = call ptr @fgets(ptr noundef nonnull %105, i32 noundef 1024, ptr noundef %114)
  %116 = call i64 @strtol(ptr nocapture noundef nonnull %105, ptr noundef null, i32 noundef 10) #10
  %117 = trunc i64 %116 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %105) #10
  store i32 %117, ptr @TEST_LENGTH, align 4, !tbaa !5
  %118 = load i32, ptr @TEST_LOOPS, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 0
  call void @llvm.assume(i1 %119)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 16
  br label %63

opaque:                                           ; preds = %2
  call void @planetpv.46(ptr null, i32 0, ptr null)
  br label %split
}

declare i64 @time(ptr)

attributes #0 = { mustprogress nofree noinline nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #1 = { mustprogress nocallback nofree noinline nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #3 = { mustprogress nocallback nofree noinline nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noinline nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #6 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #7 = { nofree noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #8 = { mustprogress nofree noinline nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="raptorlake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+pconfig,+pku,+popcnt,+prfchw,+ptwrite,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+widekl,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,-amx-transpose,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-lwp,-movrs,-mwaitx,-ndd,-nf,-ppx,-prefetchi,-push2pop2,-raoint,-rdpru,-rtm,-sgx,-sha512,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-wbnoinvd,-xop,-zu" }
attributes #9 = { mustprogress nocallback nofree noinline nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (git@github.com:llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
