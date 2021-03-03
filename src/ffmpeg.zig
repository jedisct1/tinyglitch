pub usingnamespace @import("std").c.builtins;
pub const errno_t = c_int;
pub extern fn __error() [*c]c_int;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
const union_unnamed_1 = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __mbstate_t = union_unnamed_1;
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?fn (?*c_void) callconv(.C) void,
    __arg: ?*c_void,
    __next: [*c]struct___darwin_pthread_handler_rec,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long,
    __opaque: [40]u8,
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long,
    __opaque: [192]u8,
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long,
    __opaque: [16]u8,
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec,
    __opaque: [8176]u8,
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub extern fn avutil_version() c_uint;
pub extern fn av_version_info() [*c]const u8;
pub extern fn avutil_configuration() [*c]const u8;
pub extern fn avutil_license() [*c]const u8;
pub const enum_AVMediaType = extern enum(c_int) {
    AVMEDIA_TYPE_UNKNOWN = -1,
    AVMEDIA_TYPE_VIDEO = 0,
    AVMEDIA_TYPE_AUDIO = 1,
    AVMEDIA_TYPE_DATA = 2,
    AVMEDIA_TYPE_SUBTITLE = 3,
    AVMEDIA_TYPE_ATTACHMENT = 4,
    AVMEDIA_TYPE_NB = 5,
    _,
};
pub const AVMEDIA_TYPE_UNKNOWN = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_UNKNOWN);
pub const AVMEDIA_TYPE_VIDEO = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_VIDEO);
pub const AVMEDIA_TYPE_AUDIO = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_AUDIO);
pub const AVMEDIA_TYPE_DATA = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_DATA);
pub const AVMEDIA_TYPE_SUBTITLE = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_SUBTITLE);
pub const AVMEDIA_TYPE_ATTACHMENT = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_ATTACHMENT);
pub const AVMEDIA_TYPE_NB = @enumToInt(enum_AVMediaType.AVMEDIA_TYPE_NB);
pub extern fn av_get_media_type_string(media_type: enum_AVMediaType) [*c]const u8;
pub const enum_AVPictureType = extern enum(c_int) {
    AV_PICTURE_TYPE_NONE = 0,
    AV_PICTURE_TYPE_I = 1,
    AV_PICTURE_TYPE_P = 2,
    AV_PICTURE_TYPE_B = 3,
    AV_PICTURE_TYPE_S = 4,
    AV_PICTURE_TYPE_SI = 5,
    AV_PICTURE_TYPE_SP = 6,
    AV_PICTURE_TYPE_BI = 7,
    _,
};
pub const AV_PICTURE_TYPE_NONE = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_NONE);
pub const AV_PICTURE_TYPE_I = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_I);
pub const AV_PICTURE_TYPE_P = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_P);
pub const AV_PICTURE_TYPE_B = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_B);
pub const AV_PICTURE_TYPE_S = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_S);
pub const AV_PICTURE_TYPE_SI = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_SI);
pub const AV_PICTURE_TYPE_SP = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_SP);
pub const AV_PICTURE_TYPE_BI = @enumToInt(enum_AVPictureType.AV_PICTURE_TYPE_BI);
pub extern fn av_get_picture_type_char(pict_type: enum_AVPictureType) u8;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const wchar_t = __darwin_wchar_t;
pub extern fn imaxabs(j: intmax_t) intmax_t;
const struct_unnamed_2 = extern struct {
    quot: intmax_t,
    rem: intmax_t,
};
pub const imaxdiv_t = struct_unnamed_2;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) uintmax_t;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __math_errhandling() c_int;
pub extern fn __fpclassifyf(f32) c_int;
pub extern fn __fpclassifyd(f64) c_int;
pub extern fn __fpclassifyl(c_longdouble) c_int;
pub fn __inline_isfinitef(arg___x: f32) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__x == __x) and (__builtin_fabsf(__x) != __builtin_inff()));
}
pub fn __inline_isfinited(arg___x: f64) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__x == __x) and (__builtin_fabs(__x) != __builtin_inf()));
}
pub fn __inline_isfinitel(arg___x: c_longdouble) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__x == __x) and (__builtin_fabsl(__x) != __builtin_infl()));
}
pub fn __inline_isinff(arg___x: f32) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__builtin_fabsf(__x) == __builtin_inff());
}
pub fn __inline_isinfd(arg___x: f64) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__builtin_fabs(__x) == __builtin_inf());
}
pub fn __inline_isinfl(arg___x: c_longdouble) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__builtin_fabsl(__x) == __builtin_infl());
}
pub fn __inline_isnanf(arg___x: f32) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub fn __inline_isnand(arg___x: f64) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub fn __inline_isnanl(arg___x: c_longdouble) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt(__x != __x);
}
pub fn __inline_isnormalf(arg___x: f32) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__inline_isfinitef(__x) != 0) and (__builtin_fabsf(__x) >= 0.000000000000000000000000000000000000011754943508222875));
}
pub fn __inline_isnormald(arg___x: f64) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__inline_isfinited(__x) != 0) and (__builtin_fabs(__x) >= 0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022250738585072014));
}
pub fn __inline_isnormall(arg___x: c_longdouble) callconv(.C) c_int {
    var __x = arg___x;
    return @boolToInt((__inline_isfinitel(__x) != 0) and (__builtin_fabsl(__x) >= 0));
}
pub fn __inline_signbitf(arg___x: f32) callconv(.C) c_int {
    var __x = arg___x;
    const union_unnamed_3 = extern union {
        __f: f32,
        __u: c_uint,
    };
    var __u: union_unnamed_3 = undefined;
    __u.__f = __x;
    return @bitCast(c_int, __u.__u >> @intCast(@import("std").math.Log2Int(c_uint), 31));
}
pub fn __inline_signbitd(arg___x: f64) callconv(.C) c_int {
    var __x = arg___x;
    const union_unnamed_4 = extern union {
        __f: f64,
        __u: c_ulonglong,
    };
    var __u: union_unnamed_4 = undefined;
    __u.__f = __x;
    return @bitCast(c_int, @truncate(c_uint, __u.__u >> @intCast(@import("std").math.Log2Int(c_ulonglong), 63)));
}
const struct_unnamed_6 = extern struct {
    __m: c_ulonglong,
    __sexp: c_ushort,
};
pub fn __inline_signbitl(arg___x: c_longdouble) callconv(.C) c_int {
    var __x = arg___x;
    const union_unnamed_5 = extern union {
        __ld: c_longdouble,
        __p: struct_unnamed_6,
    };
    var __u: union_unnamed_5 = undefined;
    __u.__ld = __x;
    return @bitCast(c_int, @as(c_uint, __u.__p.__sexp)) >> @intCast(@import("std").math.Log2Int(c_int), 15);
}
pub extern fn acosf(f32) f32;
pub extern fn acos(f64) f64;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn asinf(f32) f32;
pub extern fn asin(f64) f64;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn atanf(f32) f32;
pub extern fn atan(f64) f64;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2(f64, f64) f64;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn cosf(f32) f32;
pub extern fn cos(f64) f64;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn sinf(f32) f32;
pub extern fn sin(f64) f64;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn tanf(f32) f32;
pub extern fn tan(f64) f64;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn acoshf(f32) f32;
pub extern fn acosh(f64) f64;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asinhf(f32) f32;
pub extern fn asinh(f64) f64;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atanhf(f32) f32;
pub extern fn atanh(f64) f64;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn coshf(f32) f32;
pub extern fn cosh(f64) f64;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn sinhf(f32) f32;
pub extern fn sinh(f64) f64;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn tanhf(f32) f32;
pub extern fn tanh(f64) f64;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn expf(f32) f32;
pub extern fn exp(f64) f64;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2f(f32) f32;
pub extern fn exp2(f64) f64;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1f(f32) f32;
pub extern fn expm1(f64) f64;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn logf(f32) f32;
pub extern fn log(f64) f64;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10f(f32) f32;
pub extern fn log10(f64) f64;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log2f(f32) f32;
pub extern fn log2(f64) f64;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn log1pf(f32) f32;
pub extern fn log1p(f64) f64;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn logbf(f32) f32;
pub extern fn logb(f64) f64;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modf(f64, [*c]f64) f64;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn ldexpf(f32, c_int) f32;
pub extern fn ldexp(f64, c_int) f64;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn frexpf(f32, [*c]c_int) f32;
pub extern fn frexp(f64, [*c]c_int) f64;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn fabsf(f32) f32;
pub extern fn fabs(f64) f64;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn hypotf(f32, f32) f32;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn powf(f32, f32) f32;
pub extern fn pow(f64, f64) f64;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrt(f64) f64;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn erff(f32) f32;
pub extern fn erf(f64) f64;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfcf(f32) f32;
pub extern fn erfc(f64) f64;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn lgammaf(f32) f32;
pub extern fn lgamma(f64) f64;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn tgammaf(f32) f32;
pub extern fn tgamma(f64) f64;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn ceilf(f32) f32;
pub extern fn ceil(f64) f64;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn floorf(f32) f32;
pub extern fn floor(f64) f64;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn rintf(f32) f32;
pub extern fn rint(f64) f64;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn lrintf(f32) c_long;
pub extern fn lrint(f64) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn roundf(f32) f32;
pub extern fn round(f64) f64;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn lroundf(f32) c_long;
pub extern fn lround(f64) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn truncf(f32) f32;
pub extern fn trunc(f64) f64;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmod(f64, f64) f64;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nanf([*c]const u8) f32;
pub extern fn nan([*c]const u8) f64;
pub extern fn nanl([*c]const u8) c_longdouble;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fdimf(f32, f32) f32;
pub extern fn fdim(f64, f64) f64;
pub extern fn fdiml(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fminf(f32, f32) f32;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn __inff() f32;
pub extern fn __inf() f64;
pub extern fn __infl() c_longdouble;
pub extern fn __nan() f32;
pub extern fn __exp10f(f32) f32;
pub extern fn __exp10(f64) f64;
pub const struct___float2 = extern struct {
    __sinval: f32,
    __cosval: f32,
};
pub fn __sincosf(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) callconv(.C) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___float2 = __sincosf_stret(__x);
    __sinp.?.* = __stret.__sinval;
    __cosp.?.* = __stret.__cosval;
}
pub const struct___double2 = extern struct {
    __sinval: f64,
    __cosval: f64,
};
pub fn __sincos(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) callconv(.C) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___double2 = __sincos_stret(__x);
    __sinp.?.* = __stret.__sinval;
    __cosp.?.* = __stret.__cosval;
}
pub extern fn __cospif(f32) f32;
pub extern fn __cospi(f64) f64;
pub extern fn __sinpif(f32) f32;
pub extern fn __sinpi(f64) f64;
pub extern fn __tanpif(f32) f32;
pub extern fn __tanpi(f64) f64;
pub fn __sincospif(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) callconv(.C) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___float2 = __sincospif_stret(__x);
    __sinp.?.* = __stret.__sinval;
    __cosp.?.* = __stret.__cosval;
}
pub fn __sincospi(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) callconv(.C) void {
    var __x = arg___x;
    var __sinp = arg___sinp;
    var __cosp = arg___cosp;
    const __stret: struct___double2 = __sincospi_stret(__x);
    __sinp.?.* = __stret.__sinval;
    __cosp.?.* = __stret.__cosval;
}
pub extern fn __sincosf_stret(f32) struct___float2;
pub extern fn __sincos_stret(f64) struct___double2;
pub extern fn __sincospif_stret(f32) struct___float2;
pub extern fn __sincospi_stret(f64) struct___double2;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn scalb(f64, f64) f64;
pub extern var signgam: c_int;
pub extern fn rinttol(f64) c_long;
pub extern fn roundtol(f64) c_long;
pub extern fn drem(f64, f64) f64;
pub extern fn finite(f64) c_int;
pub extern fn gamma(f64) f64;
pub extern fn significand(f64) f64;
pub const struct_exception = extern struct {
    type: c_int,
    name: [*c]u8,
    arg1: f64,
    arg2: f64,
    retval: f64,
};
pub const va_list = __darwin_va_list;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn renamex_np([*c]const u8, [*c]const u8, c_uint) c_int;
pub extern fn renameatx_np(c_int, [*c]const u8, c_int, [*c]const u8, c_uint) c_int;
pub const fpos_t = __darwin_off_t;
pub const struct___sbuf = extern struct {
    _base: [*c]u8,
    _size: c_int,
};
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8,
    _r: c_int,
    _w: c_int,
    _flags: c_short,
    _file: c_short,
    _bf: struct___sbuf,
    _lbfsize: c_int,
    _cookie: ?*c_void,
    _close: ?fn (?*c_void) callconv(.C) c_int,
    _read: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int,
    _seek: ?fn (?*c_void, fpos_t, c_int) callconv(.C) fpos_t,
    _write: ?fn (?*c_void, [*c]const u8, c_int) callconv(.C) c_int,
    _ub: struct___sbuf,
    _extra: ?*struct___sFILEX,
    _ur: c_int,
    _ubuf: [3]u8,
    _nbuf: [1]u8,
    _lb: struct___sbuf,
    _blksize: c_int,
    _offset: fpos_t,
};
pub const FILE = struct___sFILE;
pub extern var __stdinp: [*c]FILE;
pub extern var __stdoutp: [*c]FILE;
pub extern var __stderrp: [*c]FILE;
pub extern fn clearerr([*c]FILE) void;
pub extern fn fclose([*c]FILE) c_int;
pub extern fn feof([*c]FILE) c_int;
pub extern fn ferror([*c]FILE) c_int;
pub extern fn fflush([*c]FILE) c_int;
pub extern fn fgetc([*c]FILE) c_int;
pub extern fn fgetpos(noalias [*c]FILE, [*c]fpos_t) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, [*c]FILE) [*c]u8;
pub extern fn fopen(__filename: [*c]const u8, __mode: [*c]const u8) [*c]FILE;
pub extern fn fprintf([*c]FILE, [*c]const u8, ...) c_int;
pub extern fn fputc(c_int, [*c]FILE) c_int;
pub extern fn fputs(noalias [*c]const u8, noalias [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]FILE) [*c]FILE;
pub extern fn fscanf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fseek([*c]FILE, c_long, c_int) c_int;
pub extern fn fsetpos([*c]FILE, [*c]const fpos_t) c_int;
pub extern fn ftell([*c]FILE) c_long;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn getc([*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn gets([*c]u8) [*c]u8;
pub extern fn perror([*c]const u8) void;
pub extern fn printf([*c]const u8, ...) c_int;
pub extern fn putc(c_int, [*c]FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn rewind([*c]FILE) void;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn setbuf(noalias [*c]FILE, noalias [*c]u8) void;
pub extern fn setvbuf(noalias [*c]FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn sprintf([*c]u8, [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn ungetc(c_int, [*c]FILE) c_int;
pub extern fn vfprintf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vprintf([*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf([*c]u8, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn fdopen(c_int, [*c]const u8) [*c]FILE;
pub extern fn fileno([*c]FILE) c_int;
pub extern fn pclose([*c]FILE) c_int;
pub extern fn popen([*c]const u8, [*c]const u8) [*c]FILE;
pub extern fn __srget([*c]FILE) c_int;
pub extern fn __svfscanf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __swbuf(c_int, [*c]FILE) c_int;
pub fn __sputc(arg__c: c_int, arg__p: [*c]FILE) callconv(.C) c_int {
    var _c = arg__c;
    var _p = arg__p;
    if (((blk: {
        const ref = &_p.*._w;
        ref.* -= 1;
        break :blk ref.*;
    }) >= @as(c_int, 0)) or ((_p.*._w >= _p.*._lbfsize) and (@bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, _c)))) != @as(c_int, '\n')))) return @bitCast(c_int, @as(c_uint, blk: {
        const tmp = @bitCast(u8, @truncate(i8, _c));
        (blk_1: {
            const ref = &_p.*._p;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).?.* = tmp;
        break :blk tmp;
    })) else return __swbuf(_c, _p);
    return 0;
}
pub extern fn flockfile([*c]FILE) void;
pub extern fn ftrylockfile([*c]FILE) c_int;
pub extern fn funlockfile([*c]FILE) void;
pub extern fn getc_unlocked([*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, [*c]FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getw([*c]FILE) c_int;
pub extern fn putw(c_int, [*c]FILE) c_int;
pub extern fn tempnam(__dir: [*c]const u8, __prefix: [*c]const u8) [*c]u8;
pub const off_t = __darwin_off_t;
pub extern fn fseeko(__stream: [*c]FILE, __offset: off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) off_t;
pub extern fn snprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsnprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __str: [*c]const u8, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn getdelim(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) isize;
pub extern fn getline(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, noalias __stream: [*c]FILE) isize;
pub extern fn fmemopen(noalias __buf: ?*c_void, __size: usize, noalias __mode: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufp: [*c][*c]u8, __sizep: [*c]usize) [*c]FILE;
pub extern const sys_nerr: c_int;
pub extern const sys_errlist: [*c]const [*c]const u8;
pub extern fn asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn ctermid_r([*c]u8) [*c]u8;
pub extern fn fgetln([*c]FILE, [*c]usize) [*c]u8;
pub extern fn fmtcheck([*c]const u8, [*c]const u8) [*c]const u8;
pub extern fn fpurge([*c]FILE) c_int;
pub extern fn setbuffer([*c]FILE, [*c]u8, c_int) void;
pub extern fn setlinebuf([*c]FILE) c_int;
pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn zopen([*c]const u8, [*c]const u8, c_int) [*c]FILE;
pub extern fn funopen(?*const c_void, ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int, ?fn (?*c_void, [*c]const u8, c_int) callconv(.C) c_int, ?fn (?*c_void, fpos_t, c_int) callconv(.C) fpos_t, ?fn (?*c_void) callconv(.C) c_int) [*c]FILE;
pub extern fn __sprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __snprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __vsprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __vsnprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
const enum_unnamed_7 = extern enum(c_int) {
    P_ALL,
    P_PID,
    P_PGID,
    _,
};
pub const P_ALL = @enumToInt(enum_unnamed_7.P_ALL);
pub const P_PID = @enumToInt(enum_unnamed_7.P_PID);
pub const P_PGID = @enumToInt(enum_unnamed_7.P_PGID);
pub const idtype_t = enum_unnamed_7;
pub const pid_t = __darwin_pid_t;
pub const id_t = __darwin_id_t;
pub const sig_atomic_t = c_int;
pub const struct___darwin_i386_thread_state = extern struct {
    __eax: c_uint,
    __ebx: c_uint,
    __ecx: c_uint,
    __edx: c_uint,
    __edi: c_uint,
    __esi: c_uint,
    __ebp: c_uint,
    __esp: c_uint,
    __ss: c_uint,
    __eflags: c_uint,
    __eip: c_uint,
    __cs: c_uint,
    __ds: c_uint,
    __es: c_uint,
    __fs: c_uint,
    __gs: c_uint,
}; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/mach/i386/_structs.h:94:21: warning: struct demoted to opaque type - has bitfield
pub const struct___darwin_fp_control = opaque {};
pub const __darwin_fp_control_t = struct___darwin_fp_control; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/mach/i386/_structs.h:152:21: warning: struct demoted to opaque type - has bitfield
pub const struct___darwin_fp_status = opaque {};
pub const __darwin_fp_status_t = struct___darwin_fp_status;
pub const struct___darwin_mmst_reg = extern struct {
    __mmst_reg: [10]u8,
    __mmst_rsrv: [6]u8,
};
pub const struct___darwin_xmm_reg = extern struct {
    __xmm_reg: [16]u8,
};
pub const struct___darwin_ymm_reg = extern struct {
    __ymm_reg: [32]u8,
};
pub const struct___darwin_zmm_reg = extern struct {
    __zmm_reg: [64]u8,
};
pub const struct___darwin_opmask_reg = extern struct {
    __opmask_reg: [8]u8,
};
pub const struct___darwin_i386_float_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_i386_avx_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
};
pub const struct___darwin_i386_avx512_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
};
pub const struct___darwin_i386_exception_state = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint32_t,
};
pub const struct___darwin_x86_debug_state32 = extern struct {
    __dr0: c_uint,
    __dr1: c_uint,
    __dr2: c_uint,
    __dr3: c_uint,
    __dr4: c_uint,
    __dr5: c_uint,
    __dr6: c_uint,
    __dr7: c_uint,
};
pub const struct___x86_pagein_state = extern struct {
    __pagein_error: c_int,
};
pub const struct___darwin_x86_thread_state64 = extern struct {
    __rax: __uint64_t,
    __rbx: __uint64_t,
    __rcx: __uint64_t,
    __rdx: __uint64_t,
    __rdi: __uint64_t,
    __rsi: __uint64_t,
    __rbp: __uint64_t,
    __rsp: __uint64_t,
    __r8: __uint64_t,
    __r9: __uint64_t,
    __r10: __uint64_t,
    __r11: __uint64_t,
    __r12: __uint64_t,
    __r13: __uint64_t,
    __r14: __uint64_t,
    __r15: __uint64_t,
    __rip: __uint64_t,
    __rflags: __uint64_t,
    __cs: __uint64_t,
    __fs: __uint64_t,
    __gs: __uint64_t,
};
pub const struct___darwin_x86_thread_full_state64 = extern struct {
    __ss64: struct___darwin_x86_thread_state64,
    __ds: __uint64_t,
    __es: __uint64_t,
    __ss: __uint64_t,
    __gsbase: __uint64_t,
};
pub const struct___darwin_x86_float_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_x86_avx_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
};
pub const struct___darwin_x86_avx512_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
    __fpu_zmmh8: struct___darwin_ymm_reg,
    __fpu_zmmh9: struct___darwin_ymm_reg,
    __fpu_zmmh10: struct___darwin_ymm_reg,
    __fpu_zmmh11: struct___darwin_ymm_reg,
    __fpu_zmmh12: struct___darwin_ymm_reg,
    __fpu_zmmh13: struct___darwin_ymm_reg,
    __fpu_zmmh14: struct___darwin_ymm_reg,
    __fpu_zmmh15: struct___darwin_ymm_reg,
    __fpu_zmm16: struct___darwin_zmm_reg,
    __fpu_zmm17: struct___darwin_zmm_reg,
    __fpu_zmm18: struct___darwin_zmm_reg,
    __fpu_zmm19: struct___darwin_zmm_reg,
    __fpu_zmm20: struct___darwin_zmm_reg,
    __fpu_zmm21: struct___darwin_zmm_reg,
    __fpu_zmm22: struct___darwin_zmm_reg,
    __fpu_zmm23: struct___darwin_zmm_reg,
    __fpu_zmm24: struct___darwin_zmm_reg,
    __fpu_zmm25: struct___darwin_zmm_reg,
    __fpu_zmm26: struct___darwin_zmm_reg,
    __fpu_zmm27: struct___darwin_zmm_reg,
    __fpu_zmm28: struct___darwin_zmm_reg,
    __fpu_zmm29: struct___darwin_zmm_reg,
    __fpu_zmm30: struct___darwin_zmm_reg,
    __fpu_zmm31: struct___darwin_zmm_reg,
};
pub const struct___darwin_x86_exception_state64 = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint64_t,
};
pub const struct___darwin_x86_debug_state64 = extern struct {
    __dr0: __uint64_t,
    __dr1: __uint64_t,
    __dr2: __uint64_t,
    __dr3: __uint64_t,
    __dr4: __uint64_t,
    __dr5: __uint64_t,
    __dr6: __uint64_t,
    __dr7: __uint64_t,
};
pub const struct___darwin_x86_cpmu_state64 = extern struct {
    __ctrs: [16]__uint64_t,
};
pub const struct___darwin_mcontext32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_float_state,
};
pub const struct___darwin_mcontext_avx32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx_state,
};
pub const struct___darwin_mcontext_avx512_32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx512_state,
};
pub const struct___darwin_mcontext64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_float_state64,
};
pub const struct___darwin_mcontext64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_float_state64,
};
pub const struct___darwin_mcontext_avx64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx512_64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const struct___darwin_mcontext_avx512_64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const mcontext_t = [*c]struct___darwin_mcontext64;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const struct___darwin_sigaltstack = extern struct {
    ss_sp: ?*c_void,
    ss_size: __darwin_size_t,
    ss_flags: c_int,
};
pub const stack_t = struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = extern struct {
    uc_onstack: c_int,
    uc_sigmask: __darwin_sigset_t,
    uc_stack: struct___darwin_sigaltstack,
    uc_link: [*c]struct___darwin_ucontext,
    uc_mcsize: __darwin_size_t,
    uc_mcontext: [*c]struct___darwin_mcontext64,
};
pub const ucontext_t = struct___darwin_ucontext;
pub const sigset_t = __darwin_sigset_t;
pub const uid_t = __darwin_uid_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*c_void,
};
pub const struct_sigevent = extern struct {
    sigev_notify: c_int,
    sigev_signo: c_int,
    sigev_value: union_sigval,
    sigev_notify_function: ?fn (union_sigval) callconv(.C) void,
    sigev_notify_attributes: [*c]pthread_attr_t,
};
pub const struct___siginfo = extern struct {
    si_signo: c_int,
    si_errno: c_int,
    si_code: c_int,
    si_pid: pid_t,
    si_uid: uid_t,
    si_status: c_int,
    si_addr: ?*c_void,
    si_value: union_sigval,
    si_band: c_long,
    __pad: [7]c_ulong,
};
pub const siginfo_t = struct___siginfo;
pub const union___sigaction_u = extern union {
    __sa_handler: ?fn (c_int) callconv(.C) void,
    __sa_sigaction: ?fn (c_int, [*c]struct___siginfo, ?*c_void) callconv(.C) void,
};
pub const struct___sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_tramp: ?fn (?*c_void, c_int, c_int, [*c]siginfo_t, ?*c_void) callconv(.C) void,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const struct_sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const sig_t = ?fn (c_int) callconv(.C) void;
pub const struct_sigvec = extern struct {
    sv_handler: ?fn (c_int) callconv(.C) void,
    sv_mask: c_int,
    sv_flags: c_int,
};
pub const struct_sigstack = extern struct {
    ss_sp: [*c]u8,
    ss_onstack: c_int,
};
pub extern fn signal(c_int, ?fn (c_int) callconv(.C) void) ?fn (c_int) callconv(.C) void;
pub const struct_timeval = extern struct {
    tv_sec: __darwin_time_t,
    tv_usec: __darwin_suseconds_t,
};
pub const rlim_t = __uint64_t;
pub const struct_rusage = extern struct {
    ru_utime: struct_timeval,
    ru_stime: struct_timeval,
    ru_maxrss: c_long,
    ru_ixrss: c_long,
    ru_idrss: c_long,
    ru_isrss: c_long,
    ru_minflt: c_long,
    ru_majflt: c_long,
    ru_nswap: c_long,
    ru_inblock: c_long,
    ru_oublock: c_long,
    ru_msgsnd: c_long,
    ru_msgrcv: c_long,
    ru_nsignals: c_long,
    ru_nvcsw: c_long,
    ru_nivcsw: c_long,
};
pub const rusage_info_t = ?*c_void;
pub const struct_rusage_info_v0 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
};
pub const struct_rusage_info_v1 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
};
pub const struct_rusage_info_v2 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
};
pub const struct_rusage_info_v3 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
};
pub const struct_rusage_info_v4 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
    ri_logical_writes: u64,
    ri_lifetime_max_phys_footprint: u64,
    ri_instructions: u64,
    ri_cycles: u64,
    ri_billed_energy: u64,
    ri_serviced_energy: u64,
    ri_interval_max_phys_footprint: u64,
    ri_runnable_time: u64,
};
pub const rusage_info_current = struct_rusage_info_v4;
pub const struct_rlimit = extern struct {
    rlim_cur: rlim_t,
    rlim_max: rlim_t,
};
pub const struct_proc_rlimit_control_wakeupmon = extern struct {
    wm_flags: u32,
    wm_rate: i32,
};
pub extern fn getpriority(c_int, id_t) c_int;
pub extern fn getiopolicy_np(c_int, c_int) c_int;
pub extern fn getrlimit(c_int, [*c]struct_rlimit) c_int;
pub extern fn getrusage(c_int, [*c]struct_rusage) c_int;
pub extern fn setpriority(c_int, id_t, c_int) c_int;
pub extern fn setiopolicy_np(c_int, c_int, c_int) c_int;
pub extern fn setrlimit(c_int, [*c]const struct_rlimit) c_int;
pub fn _OSSwapInt16(arg__data: __uint16_t) callconv(.C) __uint16_t {
    var _data = arg__data;
    return @bitCast(__uint16_t, @truncate(c_short, (@bitCast(c_int, @as(c_uint, _data)) << @intCast(@import("std").math.Log2Int(c_int), 8)) | (@bitCast(c_int, @as(c_uint, _data)) >> @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn _OSSwapInt32(arg__data: __uint32_t) callconv(.C) __uint32_t {
    var _data = arg__data;
    return __builtin_bswap32(_data);
}
pub fn _OSSwapInt64(arg__data: __uint64_t) callconv(.C) __uint64_t {
    var _data = arg__data;
    return __builtin_bswap64(_data);
} // /opt/zig/lib/zig/libc/include/any-macos-any/sys/wait.h:201:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_8 = opaque {}; // /opt/zig/lib/zig/libc/include/any-macos-any/sys/wait.h:220:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_9 = opaque {};
pub const union_wait = extern union {
    w_status: c_int,
    w_T: struct_unnamed_8,
    w_S: struct_unnamed_9,
};
pub extern fn wait([*c]c_int) pid_t;
pub extern fn waitpid(pid_t, [*c]c_int, c_int) pid_t;
pub extern fn waitid(idtype_t, id_t, [*c]siginfo_t, c_int) c_int;
pub extern fn wait3([*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn wait4(pid_t, [*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn alloca(c_ulong) ?*c_void;
pub const ct_rune_t = __darwin_ct_rune_t;
pub const rune_t = __darwin_rune_t;
const struct_unnamed_10 = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const div_t = struct_unnamed_10;
const struct_unnamed_11 = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const ldiv_t = struct_unnamed_11;
const struct_unnamed_12 = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub const lldiv_t = struct_unnamed_12;
pub extern var __mb_cur_max: c_int;
pub extern fn malloc(__size: c_ulong) ?*c_void;
pub extern fn calloc(__count: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn free(?*c_void) void;
pub extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
pub extern fn valloc(usize) ?*c_void;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*c_void;
pub extern fn posix_memalign(__memptr: [*c]?*c_void, __alignment: usize, __size: usize) c_int;
pub extern fn abort() noreturn;
pub extern fn abs(c_int) c_int;
pub extern fn atexit(?fn () callconv(.C) void) c_int;
pub extern fn atof([*c]const u8) f64;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn bsearch(__key: ?*const c_void, __base: ?*const c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) ?*c_void;
pub extern fn div(c_int, c_int) div_t;
pub extern fn exit(c_int) noreturn;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn labs(c_long) c_long;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn llabs(c_longlong) c_longlong;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn qsort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) void;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn strtod([*c]const u8, [*c][*c]u8) f64;
pub extern fn strtof([*c]const u8, [*c][*c]u8) f32;
pub extern fn strtol(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn strtoll(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoul(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoull(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn system([*c]const u8) c_int;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn _Exit(c_int) noreturn;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn drand48() f64;
pub extern fn ecvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn fcvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn gcvt(f64, c_int, [*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn lrand48() c_long;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn ptsname_r(fildes: c_int, buffer: [*c]u8, buflen: usize) c_int;
pub extern fn putenv([*c]u8) c_int;
pub extern fn random() c_long;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn setkey([*c]const u8) void;
pub extern fn setstate([*c]const u8) [*c]u8;
pub extern fn srand48(c_long) void;
pub extern fn srandom(c_uint) void;
pub extern fn unlockpt(c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub const dev_t = __darwin_dev_t;
pub const mode_t = __darwin_mode_t;
pub extern fn arc4random() u32;
pub extern fn arc4random_addrandom([*c]u8, c_int) void;
pub extern fn arc4random_buf(__buf: ?*c_void, __nbytes: usize) void;
pub extern fn arc4random_stir() void;
pub extern fn arc4random_uniform(__upper_bound: u32) u32; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:275:6: warning: unsupported type: 'BlockPointer'
pub const atexit_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:275:6
// /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:276:7: warning: unsupported type: 'BlockPointer'
pub const bsearch_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:276:7
pub extern fn cgetcap([*c]u8, [*c]const u8, c_int) [*c]u8;
pub extern fn cgetclose() c_int;
pub extern fn cgetent([*c][*c]u8, [*c][*c]u8, [*c]const u8) c_int;
pub extern fn cgetfirst([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetmatch([*c]const u8, [*c]const u8) c_int;
pub extern fn cgetnext([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetnum([*c]u8, [*c]const u8, [*c]c_long) c_int;
pub extern fn cgetset([*c]const u8) c_int;
pub extern fn cgetstr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn cgetustr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn daemon(c_int, c_int) c_int;
pub extern fn devname(dev_t, mode_t) [*c]u8;
pub extern fn devname_r(dev_t, mode_t, buf: [*c]u8, len: c_int) [*c]u8;
pub extern fn getbsize([*c]c_int, [*c]c_long) [*c]u8;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn getprogname() [*c]const u8;
pub extern fn setprogname([*c]const u8) void;
pub extern fn heapsort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) c_int; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:312:6: warning: unsupported type: 'BlockPointer'
pub const heapsort_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:312:6
pub extern fn mergesort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) c_int; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:319:6: warning: unsupported type: 'BlockPointer'
pub const mergesort_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:319:6
pub extern fn psort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) void; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:327:7: warning: unsupported type: 'BlockPointer'
pub const psort_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:327:7
pub extern fn psort_r(__base: ?*c_void, __nel: usize, __width: usize, ?*c_void, __compar: ?fn (?*c_void, ?*const c_void, ?*const c_void) callconv(.C) c_int) void; // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:335:7: warning: unsupported type: 'BlockPointer'
pub const qsort_b = @compileError("unable to resolve prototype of function"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdlib.h:335:7
pub extern fn qsort_r(__base: ?*c_void, __nel: usize, __width: usize, ?*c_void, __compar: ?fn (?*c_void, ?*const c_void, ?*const c_void) callconv(.C) c_int) void;
pub extern fn radixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn rpmatch([*c]const u8) c_int;
pub extern fn sradixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn sranddev() void;
pub extern fn srandomdev() void;
pub extern fn reallocf(__ptr: ?*c_void, __size: usize) ?*c_void;
pub extern fn strtoq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern var suboptarg: [*c]u8;
pub extern fn memchr(__s: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn memcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: c_ulong) c_int;
pub extern fn memcpy(__dst: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memmove(__dst: ?*c_void, __src: ?*const c_void, __len: c_ulong) ?*c_void;
pub extern fn memset(__b: ?*c_void, __c: c_int, __len: c_ulong) ?*c_void;
pub extern fn strcat(__s1: [*c]u8, __s2: [*c]const u8) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strncat(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strpbrk(__s: [*c]const u8, __charset: [*c]const u8) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strstr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strtok(__str: [*c]u8, __sep: [*c]const u8) [*c]u8;
pub extern fn strxfrm(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strtok_r(__str: [*c]u8, __sep: [*c]const u8, __lasts: [*c][*c]u8) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __strerrbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn strdup(__s1: [*c]const u8) [*c]u8;
pub extern fn memccpy(__dst: ?*c_void, __src: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn stpcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn stpncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strndup(__s1: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strnlen(__s1: [*c]const u8, __n: usize) usize;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub const rsize_t = __darwin_size_t;
pub extern fn memset_s(__s: ?*c_void, __smax: rsize_t, __c: c_int, __n: rsize_t) errno_t;
pub extern fn memmem(__big: ?*const c_void, __big_len: usize, __little: ?*const c_void, __little_len: usize) ?*c_void;
pub extern fn memset_pattern4(__b: ?*c_void, __pattern4: ?*const c_void, __len: usize) void;
pub extern fn memset_pattern8(__b: ?*c_void, __pattern8: ?*const c_void, __len: usize) void;
pub extern fn memset_pattern16(__b: ?*c_void, __pattern16: ?*const c_void, __len: usize) void;
pub extern fn strcasestr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strnstr(__big: [*c]const u8, __little: [*c]const u8, __len: usize) [*c]u8;
pub extern fn strlcat(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strlcpy(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strmode(__mode: c_int, __bp: [*c]u8) void;
pub extern fn strsep(__stringp: [*c][*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn swab(noalias ?*const c_void, noalias ?*c_void, isize) void;
pub extern fn timingsafe_bcmp(__b1: ?*const c_void, __b2: ?*const c_void, __len: usize) c_int;
pub extern fn bcmp(?*const c_void, ?*const c_void, c_ulong) c_int;
pub extern fn bcopy(?*const c_void, ?*c_void, usize) void;
pub extern fn bzero(?*c_void, c_ulong) void;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn ffs(c_int) c_int;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn fls(c_int) c_int;
pub extern fn flsl(c_long) c_int;
pub extern fn flsll(c_longlong) c_int;
pub extern fn av_log2(v: c_uint) c_int;
pub extern fn av_log2_16bit(v: c_uint) c_int;
pub fn av_clip_c(arg_a: c_int, arg_amin: c_int, arg_amax: c_int) callconv(.C) c_int {
    var a = arg_a;
    var amin = arg_amin;
    var amax = arg_amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
    return 0;
}
pub fn av_clip64_c(arg_a: i64, arg_amin: i64, arg_amax: i64) callconv(.C) i64 {
    var a = arg_a;
    var amin = arg_amin;
    var amax = arg_amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
    return 0;
}
pub fn av_clip_uint8_c(arg_a: c_int) callconv(.C) u8 {
    var a = arg_a;
    if ((a & ~@as(c_int, 255)) != 0) return @bitCast(u8, @truncate(i8, ~a >> @intCast(@import("std").math.Log2Int(c_int), 31))) else return @bitCast(u8, @truncate(i8, a));
    return 0;
}
pub fn av_clip_int8_c(arg_a: c_int) callconv(.C) i8 {
    var a = arg_a;
    if (((@bitCast(c_uint, a) +% @as(c_uint, 128)) & @bitCast(c_uint, ~@as(c_int, 255))) != 0) return @bitCast(i8, @truncate(i8, (a >> @intCast(@import("std").math.Log2Int(c_int), 31)) ^ @as(c_int, 127))) else return @bitCast(i8, @truncate(i8, a));
    return 0;
}
pub fn av_clip_uint16_c(arg_a: c_int) callconv(.C) u16 {
    var a = arg_a;
    if ((a & ~@as(c_int, 65535)) != 0) return @bitCast(u16, @truncate(c_short, ~a >> @intCast(@import("std").math.Log2Int(c_int), 31))) else return @bitCast(u16, @truncate(c_short, a));
    return 0;
}
pub fn av_clip_int16_c(arg_a: c_int) callconv(.C) i16 {
    var a = arg_a;
    if (((@bitCast(c_uint, a) +% @as(c_uint, 32768)) & @bitCast(c_uint, ~@as(c_int, 65535))) != 0) return @bitCast(i16, @truncate(c_short, (a >> @intCast(@import("std").math.Log2Int(c_int), 31)) ^ @as(c_int, 32767))) else return @bitCast(i16, @truncate(c_short, a));
    return 0;
}
pub fn av_clipl_int32_c(arg_a: i64) callconv(.C) i32 {
    var a = arg_a;
    if ((@bitCast(c_ulonglong, a + @bitCast(c_longlong, @as(c_ulonglong, @as(c_uint, 2147483648)))) & ~@as(c_ulonglong, 4294967295)) != 0) return @bitCast(i32, @truncate(c_int, (a >> @intCast(u6, 63)) ^ @bitCast(c_longlong, @as(c_longlong, @as(c_int, 2147483647))))) else return @bitCast(i32, @truncate(c_int, a));
    return 0;
}
pub fn av_clip_intp2_c(arg_a: c_int, arg_p: c_int) callconv(.C) c_int {
    var a = arg_a;
    var p = arg_p;
    if (((@bitCast(c_uint, a) +% @bitCast(c_uint, @as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), p))) & @bitCast(c_uint, ~((@as(c_int, 2) << @intCast(@import("std").math.Log2Int(c_int), p)) - @as(c_int, 1)))) != 0) return (a >> @intCast(@import("std").math.Log2Int(c_int), 31)) ^ ((@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), p)) - @as(c_int, 1)) else return a;
    return 0;
}
pub fn av_clip_uintp2_c(arg_a: c_int, arg_p: c_int) callconv(.C) c_uint {
    var a = arg_a;
    var p = arg_p;
    if ((a & ~((@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), p)) - @as(c_int, 1))) != 0) return @bitCast(c_uint, (~a >> @intCast(@import("std").math.Log2Int(c_int), 31)) & ((@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), p)) - @as(c_int, 1))) else return @bitCast(c_uint, a);
    return 0;
}
pub fn av_mod_uintp2_c(arg_a: c_uint, arg_p: c_uint) callconv(.C) c_uint {
    var a = arg_a;
    var p = arg_p;
    return a & ((@as(c_uint, 1) << @intCast(@import("std").math.Log2Int(c_uint), p)) -% @bitCast(c_uint, @as(c_int, 1)));
}
pub fn av_sat_add32_c(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return av_clipl_int32_c(@bitCast(i64, @as(c_longlong, a)) + @bitCast(c_longlong, @as(c_longlong, b)));
}
pub fn av_sat_dadd32_c(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return av_sat_add32_c(a, av_sat_add32_c(b, b));
}
pub fn av_sat_sub32_c(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return av_clipl_int32_c(@bitCast(i64, @as(c_longlong, a)) - @bitCast(c_longlong, @as(c_longlong, b)));
}
pub fn av_sat_dsub32_c(arg_a: c_int, arg_b: c_int) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    return av_sat_sub32_c(a, av_sat_add32_c(b, b));
}
pub fn av_sat_add64_c(arg_a: i64, arg_b: i64) callconv(.C) i64 {
    var a = arg_a;
    var b = arg_b;
    var tmp: i64 = undefined;
    return if (!__builtin_add_overflow(a, b, &tmp)) tmp else if (tmp < @bitCast(c_longlong, @as(c_longlong, @as(c_int, 0)))) @as(c_longlong, 9223372036854775807) else -@as(c_longlong, 9223372036854775807) - @bitCast(c_longlong, @as(c_longlong, @as(c_int, 1)));
}
pub fn av_sat_sub64_c(arg_a: i64, arg_b: i64) callconv(.C) i64 {
    var a = arg_a;
    var b = arg_b;
    var tmp: i64 = undefined;
    return if (!__builtin_sub_overflow(a, b, &tmp)) tmp else if (tmp < @bitCast(c_longlong, @as(c_longlong, @as(c_int, 0)))) @as(c_longlong, 9223372036854775807) else -@as(c_longlong, 9223372036854775807) - @bitCast(c_longlong, @as(c_longlong, @as(c_int, 1)));
}
pub fn av_clipf_c(arg_a: f32, arg_amin: f32, arg_amax: f32) callconv(.C) f32 {
    var a = arg_a;
    var amin = arg_amin;
    var amax = arg_amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
    return 0;
}
pub fn av_clipd_c(arg_a: f64, arg_amin: f64, arg_amax: f64) callconv(.C) f64 {
    var a = arg_a;
    var amin = arg_amin;
    var amax = arg_amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
    return 0;
}
pub fn av_ceil_log2_c(arg_x: c_int) callconv(.C) c_int {
    var x = arg_x;
    return av_log2((@bitCast(c_uint, x) -% @as(c_uint, 1)) << @intCast(@import("std").math.Log2Int(c_uint), 1));
}
pub fn av_popcount_c(arg_x: u32) callconv(.C) c_int {
    var x = arg_x;
    x -%= (x >> @intCast(u5, 1)) & @bitCast(c_uint, @as(c_int, 1431655765));
    x = (x & @bitCast(c_uint, @as(c_int, 858993459))) +% ((x >> @intCast(u5, 2)) & @bitCast(c_uint, @as(c_int, 858993459)));
    x = (x +% (x >> @intCast(u5, 4))) & @bitCast(c_uint, @as(c_int, 252645135));
    x +%= x >> @intCast(u5, 8);
    return @bitCast(c_int, (x +% (x >> @intCast(u5, 16))) & @bitCast(c_uint, @as(c_int, 63)));
}
pub fn av_popcount64_c(arg_x: u64) callconv(.C) c_int {
    var x = arg_x;
    return av_popcount_c(@bitCast(u32, @truncate(c_uint, x))) + av_popcount_c(@bitCast(u32, @truncate(c_uint, x >> @intCast(u6, 32))));
}
pub fn av_parity_c(arg_v: u32) callconv(.C) c_int {
    var v = arg_v;
    return av_popcount_c(v) & @as(c_int, 1);
}
pub const ptrdiff_t = c_long;
pub const max_align_t = c_longdouble;
pub extern fn av_strerror(errnum: c_int, errbuf: [*c]u8, errbuf_size: usize) c_int;
pub fn av_make_error_string(arg_errbuf: [*c]u8, arg_errbuf_size: usize, arg_errnum: c_int) callconv(.C) [*c]u8 {
    var errbuf = arg_errbuf;
    var errbuf_size = arg_errbuf_size;
    var errnum = arg_errnum;
    _ = av_strerror(errnum, errbuf, errbuf_size);
    return errbuf;
}
pub extern fn av_malloc(size: usize) ?*c_void;
pub extern fn av_mallocz(size: usize) ?*c_void;
pub extern fn av_malloc_array(nmemb: usize, size: usize) ?*c_void;
pub extern fn av_mallocz_array(nmemb: usize, size: usize) ?*c_void;
pub extern fn av_calloc(nmemb: usize, size: usize) ?*c_void;
pub extern fn av_realloc(ptr: ?*c_void, size: usize) ?*c_void;
pub extern fn av_reallocp(ptr: ?*c_void, size: usize) c_int;
pub extern fn av_realloc_f(ptr: ?*c_void, nelem: usize, elsize: usize) ?*c_void;
pub extern fn av_realloc_array(ptr: ?*c_void, nmemb: usize, size: usize) ?*c_void;
pub extern fn av_reallocp_array(ptr: ?*c_void, nmemb: usize, size: usize) c_int;
pub extern fn av_fast_realloc(ptr: ?*c_void, size: [*c]c_uint, min_size: usize) ?*c_void;
pub extern fn av_fast_malloc(ptr: ?*c_void, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_fast_mallocz(ptr: ?*c_void, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_free(ptr: ?*c_void) void;
pub extern fn av_freep(ptr: ?*c_void) void;
pub extern fn av_strdup(s: [*c]const u8) [*c]u8;
pub extern fn av_strndup(s: [*c]const u8, len: usize) [*c]u8;
pub extern fn av_memdup(p: ?*const c_void, size: usize) ?*c_void;
pub extern fn av_memcpy_backptr(dst: [*c]u8, back: c_int, cnt: c_int) void;
pub extern fn av_dynarray_add(tab_ptr: ?*c_void, nb_ptr: [*c]c_int, elem: ?*c_void) void;
pub extern fn av_dynarray_add_nofree(tab_ptr: ?*c_void, nb_ptr: [*c]c_int, elem: ?*c_void) c_int;
pub extern fn av_dynarray2_add(tab_ptr: [*c]?*c_void, nb_ptr: [*c]c_int, elem_size: usize, elem_data: [*c]const u8) ?*c_void;
pub fn av_size_mult(arg_a: usize, arg_b: usize, arg_r: [*c]usize) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    var r = arg_r;
    var t: usize = a *% b;
    if ((((a | b) >= (@bitCast(usize, @as(c_long, @as(c_int, 1))) << @intCast(@import("std").math.Log2Int(usize), @sizeOf(usize) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 4)))))) and (a != 0)) and ((t / a) != b)) return -@as(c_int, 22);
    r.?.* = t;
    return 0;
}
pub extern fn av_max_alloc(max: usize) void;
pub const struct_AVRational = extern struct {
    num: c_int,
    den: c_int,
};
pub const AVRational = struct_AVRational;
pub fn av_make_q(arg_num: c_int, arg_den: c_int) callconv(.C) AVRational {
    var num = arg_num;
    var den = arg_den;
    var r: AVRational = AVRational{
        .num = num,
        .den = den,
    };
    return r;
}
pub fn av_cmp_q(arg_a: AVRational, arg_b: AVRational) callconv(.C) c_int {
    var a = arg_a;
    var b = arg_b;
    const tmp: i64 = (@bitCast(c_longlong, @as(c_longlong, a.num)) * @bitCast(i64, @as(c_longlong, b.den))) - (@bitCast(c_longlong, @as(c_longlong, b.num)) * @bitCast(i64, @as(c_longlong, a.den)));
    if (tmp != 0) return @bitCast(c_int, @truncate(c_int, ((tmp ^ @bitCast(c_longlong, @as(c_longlong, a.den))) ^ @bitCast(c_longlong, @as(c_longlong, b.den))) >> @intCast(@import("std").math.Log2Int(c_longlong), 63))) | @as(c_int, 1) else if ((b.den != 0) and (a.den != 0)) return 0 else if ((a.num != 0) and (b.num != 0)) return (a.num >> @intCast(@import("std").math.Log2Int(c_int), 31)) - (b.num >> @intCast(@import("std").math.Log2Int(c_int), 31)) else return -@as(c_int, 2147483647) - @as(c_int, 1);
    return 0;
}
pub fn av_q2d(arg_a: AVRational) callconv(.C) f64 {
    var a = arg_a;
    return @intToFloat(f64, a.num) / @intToFloat(f64, a.den);
}
pub extern fn av_reduce(dst_num: [*c]c_int, dst_den: [*c]c_int, num: i64, den: i64, max: i64) c_int;
pub extern fn av_mul_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_div_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_add_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_sub_q(b: AVRational, c: AVRational) AVRational;
pub fn av_inv_q(arg_q: AVRational) callconv(.C) AVRational {
    var q = arg_q;
    var r: AVRational = AVRational{
        .num = q.den,
        .den = q.num,
    };
    return r;
}
pub extern fn av_d2q(d: f64, max: c_int) AVRational;
pub extern fn av_nearer_q(q: AVRational, q1: AVRational, q2: AVRational) c_int;
pub extern fn av_find_nearest_q_idx(q: AVRational, q_list: [*c]const AVRational) c_int;
pub extern fn av_q2intfloat(q: AVRational) u32;
pub extern fn av_gcd_q(a: AVRational, b: AVRational, max_den: c_int, def: AVRational) AVRational;
pub const union_av_intfloat32 = extern union {
    i: u32,
    f: f32,
};
pub const union_av_intfloat64 = extern union {
    i: u64,
    f: f64,
};
pub fn av_int2float(arg_i: u32) callconv(.C) f32 {
    var i = arg_i;
    var v: union_av_intfloat32 = undefined;
    v.i = i;
    return v.f;
}
pub fn av_float2int(arg_f: f32) callconv(.C) u32 {
    var f = arg_f;
    var v: union_av_intfloat32 = undefined;
    v.f = f;
    return v.i;
}
pub fn av_int2double(arg_i: u64) callconv(.C) f64 {
    var i = arg_i;
    var v: union_av_intfloat64 = undefined;
    v.i = i;
    return v.f;
}
pub fn av_double2int(arg_f: f64) callconv(.C) u64 {
    var f = arg_f;
    var v: union_av_intfloat64 = undefined;
    v.f = f;
    return v.i;
}
pub const enum_AVRounding = extern enum(c_int) {
    AV_ROUND_ZERO = 0,
    AV_ROUND_INF = 1,
    AV_ROUND_DOWN = 2,
    AV_ROUND_UP = 3,
    AV_ROUND_NEAR_INF = 5,
    AV_ROUND_PASS_MINMAX = 8192,
    _,
};
pub const AV_ROUND_ZERO = @enumToInt(enum_AVRounding.AV_ROUND_ZERO);
pub const AV_ROUND_INF = @enumToInt(enum_AVRounding.AV_ROUND_INF);
pub const AV_ROUND_DOWN = @enumToInt(enum_AVRounding.AV_ROUND_DOWN);
pub const AV_ROUND_UP = @enumToInt(enum_AVRounding.AV_ROUND_UP);
pub const AV_ROUND_NEAR_INF = @enumToInt(enum_AVRounding.AV_ROUND_NEAR_INF);
pub const AV_ROUND_PASS_MINMAX = @enumToInt(enum_AVRounding.AV_ROUND_PASS_MINMAX);
pub extern fn av_gcd(a: i64, b: i64) i64;
pub extern fn av_rescale(a: i64, b: i64, c: i64) i64;
pub extern fn av_rescale_rnd(a: i64, b: i64, c: i64, rnd: enum_AVRounding) i64;
pub extern fn av_rescale_q(a: i64, bq: AVRational, cq: AVRational) i64;
pub extern fn av_rescale_q_rnd(a: i64, bq: AVRational, cq: AVRational, rnd: enum_AVRounding) i64;
pub extern fn av_compare_ts(ts_a: i64, tb_a: AVRational, ts_b: i64, tb_b: AVRational) c_int;
pub extern fn av_compare_mod(a: u64, b: u64, mod: u64) i64;
pub extern fn av_rescale_delta(in_tb: AVRational, in_ts: i64, fs_tb: AVRational, duration: c_int, last: [*c]i64, out_tb: AVRational) i64;
pub extern fn av_add_stable(ts_tb: AVRational, ts: i64, inc_tb: AVRational, inc: i64) i64;
pub const __gnuc_va_list = __builtin_va_list;
const enum_unnamed_13 = extern enum(c_int) {
    AV_CLASS_CATEGORY_NA = 0,
    AV_CLASS_CATEGORY_INPUT = 1,
    AV_CLASS_CATEGORY_OUTPUT = 2,
    AV_CLASS_CATEGORY_MUXER = 3,
    AV_CLASS_CATEGORY_DEMUXER = 4,
    AV_CLASS_CATEGORY_ENCODER = 5,
    AV_CLASS_CATEGORY_DECODER = 6,
    AV_CLASS_CATEGORY_FILTER = 7,
    AV_CLASS_CATEGORY_BITSTREAM_FILTER = 8,
    AV_CLASS_CATEGORY_SWSCALER = 9,
    AV_CLASS_CATEGORY_SWRESAMPLER = 10,
    AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT = 40,
    AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT = 41,
    AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT = 42,
    AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT = 43,
    AV_CLASS_CATEGORY_DEVICE_OUTPUT = 44,
    AV_CLASS_CATEGORY_DEVICE_INPUT = 45,
    AV_CLASS_CATEGORY_NB = 46,
    _,
};
pub const AV_CLASS_CATEGORY_NA = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_NA);
pub const AV_CLASS_CATEGORY_INPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_INPUT);
pub const AV_CLASS_CATEGORY_OUTPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_OUTPUT);
pub const AV_CLASS_CATEGORY_MUXER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_MUXER);
pub const AV_CLASS_CATEGORY_DEMUXER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEMUXER);
pub const AV_CLASS_CATEGORY_ENCODER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_ENCODER);
pub const AV_CLASS_CATEGORY_DECODER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DECODER);
pub const AV_CLASS_CATEGORY_FILTER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_FILTER);
pub const AV_CLASS_CATEGORY_BITSTREAM_FILTER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_BITSTREAM_FILTER);
pub const AV_CLASS_CATEGORY_SWSCALER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_SWSCALER);
pub const AV_CLASS_CATEGORY_SWRESAMPLER = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_SWRESAMPLER);
pub const AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT);
pub const AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT);
pub const AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT);
pub const AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT);
pub const AV_CLASS_CATEGORY_DEVICE_OUTPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_OUTPUT);
pub const AV_CLASS_CATEGORY_DEVICE_INPUT = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_DEVICE_INPUT);
pub const AV_CLASS_CATEGORY_NB = @enumToInt(enum_unnamed_13.AV_CLASS_CATEGORY_NB);
pub const AVClassCategory = enum_unnamed_13;
pub const struct_AVOptionRanges = opaque {};
pub const struct_AVOption = opaque {};
pub const struct_AVClass = extern struct {
    class_name: [*c]const u8,
    item_name: ?fn (?*c_void) callconv(.C) [*c]const u8,
    option: ?*const struct_AVOption,
    version: c_int,
    log_level_offset_offset: c_int,
    parent_log_context_offset: c_int,
    child_next: ?fn (?*c_void, ?*c_void) callconv(.C) ?*c_void,
    child_class_next: ?fn ([*c]const struct_AVClass) callconv(.C) [*c]const struct_AVClass,
    category: AVClassCategory,
    get_category: ?fn (?*c_void) callconv(.C) AVClassCategory,
    query_ranges: ?fn ([*c]?*struct_AVOptionRanges, ?*c_void, [*c]const u8, c_int) callconv(.C) c_int,
    child_class_iterate: ?fn ([*c]?*c_void) callconv(.C) [*c]const struct_AVClass,
};
pub const AVClass = struct_AVClass;
pub extern fn av_log(avcl: ?*c_void, level: c_int, fmt: [*c]const u8, ...) void;
pub extern fn av_log_once(avcl: ?*c_void, initial_level: c_int, subsequent_level: c_int, state: [*c]c_int, fmt: [*c]const u8, ...) void;
pub extern fn av_vlog(avcl: ?*c_void, level: c_int, fmt: [*c]const u8, vl: [*c]struct___va_list_tag) void;
pub extern fn av_log_get_level() c_int;
pub extern fn av_log_set_level(level: c_int) void;
pub extern fn av_log_set_callback(callback: ?fn (?*c_void, c_int, [*c]const u8, [*c]struct___va_list_tag) callconv(.C) void) void;
pub extern fn av_log_default_callback(avcl: ?*c_void, level: c_int, fmt: [*c]const u8, vl: [*c]struct___va_list_tag) void;
pub extern fn av_default_item_name(ctx: ?*c_void) [*c]const u8;
pub extern fn av_default_get_category(ptr: ?*c_void) AVClassCategory;
pub extern fn av_log_format_line(ptr: ?*c_void, level: c_int, fmt: [*c]const u8, vl: [*c]struct___va_list_tag, line: [*c]u8, line_size: c_int, print_prefix: [*c]c_int) void;
pub extern fn av_log_format_line2(ptr: ?*c_void, level: c_int, fmt: [*c]const u8, vl: [*c]struct___va_list_tag, line: [*c]u8, line_size: c_int, print_prefix: [*c]c_int) c_int;
pub extern fn av_log_set_flags(arg: c_int) void;
pub extern fn av_log_get_flags() c_int;
pub const enum_AVPixelFormat = extern enum(c_int) {
    AV_PIX_FMT_NONE = -1,
    AV_PIX_FMT_YUV420P = 0,
    AV_PIX_FMT_YUYV422 = 1,
    AV_PIX_FMT_RGB24 = 2,
    AV_PIX_FMT_BGR24 = 3,
    AV_PIX_FMT_YUV422P = 4,
    AV_PIX_FMT_YUV444P = 5,
    AV_PIX_FMT_YUV410P = 6,
    AV_PIX_FMT_YUV411P = 7,
    AV_PIX_FMT_GRAY8 = 8,
    AV_PIX_FMT_MONOWHITE = 9,
    AV_PIX_FMT_MONOBLACK = 10,
    AV_PIX_FMT_PAL8 = 11,
    AV_PIX_FMT_YUVJ420P = 12,
    AV_PIX_FMT_YUVJ422P = 13,
    AV_PIX_FMT_YUVJ444P = 14,
    AV_PIX_FMT_UYVY422 = 15,
    AV_PIX_FMT_UYYVYY411 = 16,
    AV_PIX_FMT_BGR8 = 17,
    AV_PIX_FMT_BGR4 = 18,
    AV_PIX_FMT_BGR4_BYTE = 19,
    AV_PIX_FMT_RGB8 = 20,
    AV_PIX_FMT_RGB4 = 21,
    AV_PIX_FMT_RGB4_BYTE = 22,
    AV_PIX_FMT_NV12 = 23,
    AV_PIX_FMT_NV21 = 24,
    AV_PIX_FMT_ARGB = 25,
    AV_PIX_FMT_RGBA = 26,
    AV_PIX_FMT_ABGR = 27,
    AV_PIX_FMT_BGRA = 28,
    AV_PIX_FMT_GRAY16BE = 29,
    AV_PIX_FMT_GRAY16LE = 30,
    AV_PIX_FMT_YUV440P = 31,
    AV_PIX_FMT_YUVJ440P = 32,
    AV_PIX_FMT_YUVA420P = 33,
    AV_PIX_FMT_RGB48BE = 34,
    AV_PIX_FMT_RGB48LE = 35,
    AV_PIX_FMT_RGB565BE = 36,
    AV_PIX_FMT_RGB565LE = 37,
    AV_PIX_FMT_RGB555BE = 38,
    AV_PIX_FMT_RGB555LE = 39,
    AV_PIX_FMT_BGR565BE = 40,
    AV_PIX_FMT_BGR565LE = 41,
    AV_PIX_FMT_BGR555BE = 42,
    AV_PIX_FMT_BGR555LE = 43,
    AV_PIX_FMT_VAAPI_MOCO = 44,
    AV_PIX_FMT_VAAPI_IDCT = 45,
    AV_PIX_FMT_VAAPI_VLD = 46,
    AV_PIX_FMT_VAAPI = 46,
    AV_PIX_FMT_YUV420P16LE = 47,
    AV_PIX_FMT_YUV420P16BE = 48,
    AV_PIX_FMT_YUV422P16LE = 49,
    AV_PIX_FMT_YUV422P16BE = 50,
    AV_PIX_FMT_YUV444P16LE = 51,
    AV_PIX_FMT_YUV444P16BE = 52,
    AV_PIX_FMT_DXVA2_VLD = 53,
    AV_PIX_FMT_RGB444LE = 54,
    AV_PIX_FMT_RGB444BE = 55,
    AV_PIX_FMT_BGR444LE = 56,
    AV_PIX_FMT_BGR444BE = 57,
    AV_PIX_FMT_YA8 = 58,
    AV_PIX_FMT_Y400A = 58,
    AV_PIX_FMT_GRAY8A = 58,
    AV_PIX_FMT_BGR48BE = 59,
    AV_PIX_FMT_BGR48LE = 60,
    AV_PIX_FMT_YUV420P9BE = 61,
    AV_PIX_FMT_YUV420P9LE = 62,
    AV_PIX_FMT_YUV420P10BE = 63,
    AV_PIX_FMT_YUV420P10LE = 64,
    AV_PIX_FMT_YUV422P10BE = 65,
    AV_PIX_FMT_YUV422P10LE = 66,
    AV_PIX_FMT_YUV444P9BE = 67,
    AV_PIX_FMT_YUV444P9LE = 68,
    AV_PIX_FMT_YUV444P10BE = 69,
    AV_PIX_FMT_YUV444P10LE = 70,
    AV_PIX_FMT_YUV422P9BE = 71,
    AV_PIX_FMT_YUV422P9LE = 72,
    AV_PIX_FMT_GBRP = 73,
    AV_PIX_FMT_GBR24P = 73,
    AV_PIX_FMT_GBRP9BE = 74,
    AV_PIX_FMT_GBRP9LE = 75,
    AV_PIX_FMT_GBRP10BE = 76,
    AV_PIX_FMT_GBRP10LE = 77,
    AV_PIX_FMT_GBRP16BE = 78,
    AV_PIX_FMT_GBRP16LE = 79,
    AV_PIX_FMT_YUVA422P = 80,
    AV_PIX_FMT_YUVA444P = 81,
    AV_PIX_FMT_YUVA420P9BE = 82,
    AV_PIX_FMT_YUVA420P9LE = 83,
    AV_PIX_FMT_YUVA422P9BE = 84,
    AV_PIX_FMT_YUVA422P9LE = 85,
    AV_PIX_FMT_YUVA444P9BE = 86,
    AV_PIX_FMT_YUVA444P9LE = 87,
    AV_PIX_FMT_YUVA420P10BE = 88,
    AV_PIX_FMT_YUVA420P10LE = 89,
    AV_PIX_FMT_YUVA422P10BE = 90,
    AV_PIX_FMT_YUVA422P10LE = 91,
    AV_PIX_FMT_YUVA444P10BE = 92,
    AV_PIX_FMT_YUVA444P10LE = 93,
    AV_PIX_FMT_YUVA420P16BE = 94,
    AV_PIX_FMT_YUVA420P16LE = 95,
    AV_PIX_FMT_YUVA422P16BE = 96,
    AV_PIX_FMT_YUVA422P16LE = 97,
    AV_PIX_FMT_YUVA444P16BE = 98,
    AV_PIX_FMT_YUVA444P16LE = 99,
    AV_PIX_FMT_VDPAU = 100,
    AV_PIX_FMT_XYZ12LE = 101,
    AV_PIX_FMT_XYZ12BE = 102,
    AV_PIX_FMT_NV16 = 103,
    AV_PIX_FMT_NV20LE = 104,
    AV_PIX_FMT_NV20BE = 105,
    AV_PIX_FMT_RGBA64BE = 106,
    AV_PIX_FMT_RGBA64LE = 107,
    AV_PIX_FMT_BGRA64BE = 108,
    AV_PIX_FMT_BGRA64LE = 109,
    AV_PIX_FMT_YVYU422 = 110,
    AV_PIX_FMT_YA16BE = 111,
    AV_PIX_FMT_YA16LE = 112,
    AV_PIX_FMT_GBRAP = 113,
    AV_PIX_FMT_GBRAP16BE = 114,
    AV_PIX_FMT_GBRAP16LE = 115,
    AV_PIX_FMT_QSV = 116,
    AV_PIX_FMT_MMAL = 117,
    AV_PIX_FMT_D3D11VA_VLD = 118,
    AV_PIX_FMT_CUDA = 119,
    AV_PIX_FMT_0RGB = 120,
    AV_PIX_FMT_RGB0 = 121,
    AV_PIX_FMT_0BGR = 122,
    AV_PIX_FMT_BGR0 = 123,
    AV_PIX_FMT_YUV420P12BE = 124,
    AV_PIX_FMT_YUV420P12LE = 125,
    AV_PIX_FMT_YUV420P14BE = 126,
    AV_PIX_FMT_YUV420P14LE = 127,
    AV_PIX_FMT_YUV422P12BE = 128,
    AV_PIX_FMT_YUV422P12LE = 129,
    AV_PIX_FMT_YUV422P14BE = 130,
    AV_PIX_FMT_YUV422P14LE = 131,
    AV_PIX_FMT_YUV444P12BE = 132,
    AV_PIX_FMT_YUV444P12LE = 133,
    AV_PIX_FMT_YUV444P14BE = 134,
    AV_PIX_FMT_YUV444P14LE = 135,
    AV_PIX_FMT_GBRP12BE = 136,
    AV_PIX_FMT_GBRP12LE = 137,
    AV_PIX_FMT_GBRP14BE = 138,
    AV_PIX_FMT_GBRP14LE = 139,
    AV_PIX_FMT_YUVJ411P = 140,
    AV_PIX_FMT_BAYER_BGGR8 = 141,
    AV_PIX_FMT_BAYER_RGGB8 = 142,
    AV_PIX_FMT_BAYER_GBRG8 = 143,
    AV_PIX_FMT_BAYER_GRBG8 = 144,
    AV_PIX_FMT_BAYER_BGGR16LE = 145,
    AV_PIX_FMT_BAYER_BGGR16BE = 146,
    AV_PIX_FMT_BAYER_RGGB16LE = 147,
    AV_PIX_FMT_BAYER_RGGB16BE = 148,
    AV_PIX_FMT_BAYER_GBRG16LE = 149,
    AV_PIX_FMT_BAYER_GBRG16BE = 150,
    AV_PIX_FMT_BAYER_GRBG16LE = 151,
    AV_PIX_FMT_BAYER_GRBG16BE = 152,
    AV_PIX_FMT_XVMC = 153,
    AV_PIX_FMT_YUV440P10LE = 154,
    AV_PIX_FMT_YUV440P10BE = 155,
    AV_PIX_FMT_YUV440P12LE = 156,
    AV_PIX_FMT_YUV440P12BE = 157,
    AV_PIX_FMT_AYUV64LE = 158,
    AV_PIX_FMT_AYUV64BE = 159,
    AV_PIX_FMT_VIDEOTOOLBOX = 160,
    AV_PIX_FMT_P010LE = 161,
    AV_PIX_FMT_P010BE = 162,
    AV_PIX_FMT_GBRAP12BE = 163,
    AV_PIX_FMT_GBRAP12LE = 164,
    AV_PIX_FMT_GBRAP10BE = 165,
    AV_PIX_FMT_GBRAP10LE = 166,
    AV_PIX_FMT_MEDIACODEC = 167,
    AV_PIX_FMT_GRAY12BE = 168,
    AV_PIX_FMT_GRAY12LE = 169,
    AV_PIX_FMT_GRAY10BE = 170,
    AV_PIX_FMT_GRAY10LE = 171,
    AV_PIX_FMT_P016LE = 172,
    AV_PIX_FMT_P016BE = 173,
    AV_PIX_FMT_D3D11 = 174,
    AV_PIX_FMT_GRAY9BE = 175,
    AV_PIX_FMT_GRAY9LE = 176,
    AV_PIX_FMT_GBRPF32BE = 177,
    AV_PIX_FMT_GBRPF32LE = 178,
    AV_PIX_FMT_GBRAPF32BE = 179,
    AV_PIX_FMT_GBRAPF32LE = 180,
    AV_PIX_FMT_DRM_PRIME = 181,
    AV_PIX_FMT_OPENCL = 182,
    AV_PIX_FMT_GRAY14BE = 183,
    AV_PIX_FMT_GRAY14LE = 184,
    AV_PIX_FMT_GRAYF32BE = 185,
    AV_PIX_FMT_GRAYF32LE = 186,
    AV_PIX_FMT_YUVA422P12BE = 187,
    AV_PIX_FMT_YUVA422P12LE = 188,
    AV_PIX_FMT_YUVA444P12BE = 189,
    AV_PIX_FMT_YUVA444P12LE = 190,
    AV_PIX_FMT_NV24 = 191,
    AV_PIX_FMT_NV42 = 192,
    AV_PIX_FMT_VULKAN = 193,
    AV_PIX_FMT_Y210BE = 194,
    AV_PIX_FMT_Y210LE = 195,
    AV_PIX_FMT_X2RGB10LE = 196,
    AV_PIX_FMT_X2RGB10BE = 197,
    AV_PIX_FMT_NB = 198,
    _,
};
pub const AV_PIX_FMT_NONE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NONE);
pub const AV_PIX_FMT_YUV420P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P);
pub const AV_PIX_FMT_YUYV422 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUYV422);
pub const AV_PIX_FMT_RGB24 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB24);
pub const AV_PIX_FMT_BGR24 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR24);
pub const AV_PIX_FMT_YUV422P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P);
pub const AV_PIX_FMT_YUV444P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P);
pub const AV_PIX_FMT_YUV410P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV410P);
pub const AV_PIX_FMT_YUV411P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV411P);
pub const AV_PIX_FMT_GRAY8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY8);
pub const AV_PIX_FMT_MONOWHITE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_MONOWHITE);
pub const AV_PIX_FMT_MONOBLACK = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_MONOBLACK);
pub const AV_PIX_FMT_PAL8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_PAL8);
pub const AV_PIX_FMT_YUVJ420P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVJ420P);
pub const AV_PIX_FMT_YUVJ422P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVJ422P);
pub const AV_PIX_FMT_YUVJ444P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVJ444P);
pub const AV_PIX_FMT_UYVY422 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_UYVY422);
pub const AV_PIX_FMT_UYYVYY411 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_UYYVYY411);
pub const AV_PIX_FMT_BGR8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR8);
pub const AV_PIX_FMT_BGR4 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR4);
pub const AV_PIX_FMT_BGR4_BYTE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR4_BYTE);
pub const AV_PIX_FMT_RGB8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB8);
pub const AV_PIX_FMT_RGB4 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB4);
pub const AV_PIX_FMT_RGB4_BYTE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB4_BYTE);
pub const AV_PIX_FMT_NV12 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV12);
pub const AV_PIX_FMT_NV21 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV21);
pub const AV_PIX_FMT_ARGB = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_ARGB);
pub const AV_PIX_FMT_RGBA = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGBA);
pub const AV_PIX_FMT_ABGR = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_ABGR);
pub const AV_PIX_FMT_BGRA = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGRA);
pub const AV_PIX_FMT_GRAY16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY16BE);
pub const AV_PIX_FMT_GRAY16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY16LE);
pub const AV_PIX_FMT_YUV440P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV440P);
pub const AV_PIX_FMT_YUVJ440P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVJ440P);
pub const AV_PIX_FMT_YUVA420P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P);
pub const AV_PIX_FMT_RGB48BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB48BE);
pub const AV_PIX_FMT_RGB48LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB48LE);
pub const AV_PIX_FMT_RGB565BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB565BE);
pub const AV_PIX_FMT_RGB565LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB565LE);
pub const AV_PIX_FMT_RGB555BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB555BE);
pub const AV_PIX_FMT_RGB555LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB555LE);
pub const AV_PIX_FMT_BGR565BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR565BE);
pub const AV_PIX_FMT_BGR565LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR565LE);
pub const AV_PIX_FMT_BGR555BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR555BE);
pub const AV_PIX_FMT_BGR555LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR555LE);
pub const AV_PIX_FMT_VAAPI_MOCO = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VAAPI_MOCO);
pub const AV_PIX_FMT_VAAPI_IDCT = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VAAPI_IDCT);
pub const AV_PIX_FMT_VAAPI_VLD = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VAAPI_VLD);
pub const AV_PIX_FMT_VAAPI = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VAAPI);
pub const AV_PIX_FMT_YUV420P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P16LE);
pub const AV_PIX_FMT_YUV420P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P16BE);
pub const AV_PIX_FMT_YUV422P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P16LE);
pub const AV_PIX_FMT_YUV422P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P16BE);
pub const AV_PIX_FMT_YUV444P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P16LE);
pub const AV_PIX_FMT_YUV444P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P16BE);
pub const AV_PIX_FMT_DXVA2_VLD = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_DXVA2_VLD);
pub const AV_PIX_FMT_RGB444LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB444LE);
pub const AV_PIX_FMT_RGB444BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB444BE);
pub const AV_PIX_FMT_BGR444LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR444LE);
pub const AV_PIX_FMT_BGR444BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR444BE);
pub const AV_PIX_FMT_YA8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YA8);
pub const AV_PIX_FMT_Y400A = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_Y400A);
pub const AV_PIX_FMT_GRAY8A = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY8A);
pub const AV_PIX_FMT_BGR48BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR48BE);
pub const AV_PIX_FMT_BGR48LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR48LE);
pub const AV_PIX_FMT_YUV420P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P9BE);
pub const AV_PIX_FMT_YUV420P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P9LE);
pub const AV_PIX_FMT_YUV420P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P10BE);
pub const AV_PIX_FMT_YUV420P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P10LE);
pub const AV_PIX_FMT_YUV422P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P10BE);
pub const AV_PIX_FMT_YUV422P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P10LE);
pub const AV_PIX_FMT_YUV444P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P9BE);
pub const AV_PIX_FMT_YUV444P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P9LE);
pub const AV_PIX_FMT_YUV444P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P10BE);
pub const AV_PIX_FMT_YUV444P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P10LE);
pub const AV_PIX_FMT_YUV422P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P9BE);
pub const AV_PIX_FMT_YUV422P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P9LE);
pub const AV_PIX_FMT_GBRP = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP);
pub const AV_PIX_FMT_GBR24P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBR24P);
pub const AV_PIX_FMT_GBRP9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP9BE);
pub const AV_PIX_FMT_GBRP9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP9LE);
pub const AV_PIX_FMT_GBRP10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP10BE);
pub const AV_PIX_FMT_GBRP10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP10LE);
pub const AV_PIX_FMT_GBRP16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP16BE);
pub const AV_PIX_FMT_GBRP16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP16LE);
pub const AV_PIX_FMT_YUVA422P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P);
pub const AV_PIX_FMT_YUVA444P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P);
pub const AV_PIX_FMT_YUVA420P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P9BE);
pub const AV_PIX_FMT_YUVA420P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P9LE);
pub const AV_PIX_FMT_YUVA422P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P9BE);
pub const AV_PIX_FMT_YUVA422P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P9LE);
pub const AV_PIX_FMT_YUVA444P9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P9BE);
pub const AV_PIX_FMT_YUVA444P9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P9LE);
pub const AV_PIX_FMT_YUVA420P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P10BE);
pub const AV_PIX_FMT_YUVA420P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P10LE);
pub const AV_PIX_FMT_YUVA422P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P10BE);
pub const AV_PIX_FMT_YUVA422P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P10LE);
pub const AV_PIX_FMT_YUVA444P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P10BE);
pub const AV_PIX_FMT_YUVA444P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P10LE);
pub const AV_PIX_FMT_YUVA420P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P16BE);
pub const AV_PIX_FMT_YUVA420P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA420P16LE);
pub const AV_PIX_FMT_YUVA422P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P16BE);
pub const AV_PIX_FMT_YUVA422P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P16LE);
pub const AV_PIX_FMT_YUVA444P16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P16BE);
pub const AV_PIX_FMT_YUVA444P16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P16LE);
pub const AV_PIX_FMT_VDPAU = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VDPAU);
pub const AV_PIX_FMT_XYZ12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_XYZ12LE);
pub const AV_PIX_FMT_XYZ12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_XYZ12BE);
pub const AV_PIX_FMT_NV16 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV16);
pub const AV_PIX_FMT_NV20LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV20LE);
pub const AV_PIX_FMT_NV20BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV20BE);
pub const AV_PIX_FMT_RGBA64BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGBA64BE);
pub const AV_PIX_FMT_RGBA64LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGBA64LE);
pub const AV_PIX_FMT_BGRA64BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGRA64BE);
pub const AV_PIX_FMT_BGRA64LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGRA64LE);
pub const AV_PIX_FMT_YVYU422 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YVYU422);
pub const AV_PIX_FMT_YA16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YA16BE);
pub const AV_PIX_FMT_YA16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YA16LE);
pub const AV_PIX_FMT_GBRAP = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP);
pub const AV_PIX_FMT_GBRAP16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP16BE);
pub const AV_PIX_FMT_GBRAP16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP16LE);
pub const AV_PIX_FMT_QSV = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_QSV);
pub const AV_PIX_FMT_MMAL = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_MMAL);
pub const AV_PIX_FMT_D3D11VA_VLD = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_D3D11VA_VLD);
pub const AV_PIX_FMT_CUDA = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_CUDA);
pub const AV_PIX_FMT_0RGB = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_0RGB);
pub const AV_PIX_FMT_RGB0 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_RGB0);
pub const AV_PIX_FMT_0BGR = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_0BGR);
pub const AV_PIX_FMT_BGR0 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BGR0);
pub const AV_PIX_FMT_YUV420P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P12BE);
pub const AV_PIX_FMT_YUV420P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P12LE);
pub const AV_PIX_FMT_YUV420P14BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P14BE);
pub const AV_PIX_FMT_YUV420P14LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV420P14LE);
pub const AV_PIX_FMT_YUV422P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P12BE);
pub const AV_PIX_FMT_YUV422P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P12LE);
pub const AV_PIX_FMT_YUV422P14BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P14BE);
pub const AV_PIX_FMT_YUV422P14LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV422P14LE);
pub const AV_PIX_FMT_YUV444P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P12BE);
pub const AV_PIX_FMT_YUV444P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P12LE);
pub const AV_PIX_FMT_YUV444P14BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P14BE);
pub const AV_PIX_FMT_YUV444P14LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV444P14LE);
pub const AV_PIX_FMT_GBRP12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP12BE);
pub const AV_PIX_FMT_GBRP12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP12LE);
pub const AV_PIX_FMT_GBRP14BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP14BE);
pub const AV_PIX_FMT_GBRP14LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRP14LE);
pub const AV_PIX_FMT_YUVJ411P = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVJ411P);
pub const AV_PIX_FMT_BAYER_BGGR8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_BGGR8);
pub const AV_PIX_FMT_BAYER_RGGB8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_RGGB8);
pub const AV_PIX_FMT_BAYER_GBRG8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GBRG8);
pub const AV_PIX_FMT_BAYER_GRBG8 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GRBG8);
pub const AV_PIX_FMT_BAYER_BGGR16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_BGGR16LE);
pub const AV_PIX_FMT_BAYER_BGGR16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_BGGR16BE);
pub const AV_PIX_FMT_BAYER_RGGB16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_RGGB16LE);
pub const AV_PIX_FMT_BAYER_RGGB16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_RGGB16BE);
pub const AV_PIX_FMT_BAYER_GBRG16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GBRG16LE);
pub const AV_PIX_FMT_BAYER_GBRG16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GBRG16BE);
pub const AV_PIX_FMT_BAYER_GRBG16LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GRBG16LE);
pub const AV_PIX_FMT_BAYER_GRBG16BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_BAYER_GRBG16BE);
pub const AV_PIX_FMT_XVMC = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_XVMC);
pub const AV_PIX_FMT_YUV440P10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV440P10LE);
pub const AV_PIX_FMT_YUV440P10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV440P10BE);
pub const AV_PIX_FMT_YUV440P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV440P12LE);
pub const AV_PIX_FMT_YUV440P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUV440P12BE);
pub const AV_PIX_FMT_AYUV64LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_AYUV64LE);
pub const AV_PIX_FMT_AYUV64BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_AYUV64BE);
pub const AV_PIX_FMT_VIDEOTOOLBOX = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VIDEOTOOLBOX);
pub const AV_PIX_FMT_P010LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_P010LE);
pub const AV_PIX_FMT_P010BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_P010BE);
pub const AV_PIX_FMT_GBRAP12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP12BE);
pub const AV_PIX_FMT_GBRAP12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP12LE);
pub const AV_PIX_FMT_GBRAP10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP10BE);
pub const AV_PIX_FMT_GBRAP10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAP10LE);
pub const AV_PIX_FMT_MEDIACODEC = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_MEDIACODEC);
pub const AV_PIX_FMT_GRAY12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY12BE);
pub const AV_PIX_FMT_GRAY12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY12LE);
pub const AV_PIX_FMT_GRAY10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY10BE);
pub const AV_PIX_FMT_GRAY10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY10LE);
pub const AV_PIX_FMT_P016LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_P016LE);
pub const AV_PIX_FMT_P016BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_P016BE);
pub const AV_PIX_FMT_D3D11 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_D3D11);
pub const AV_PIX_FMT_GRAY9BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY9BE);
pub const AV_PIX_FMT_GRAY9LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY9LE);
pub const AV_PIX_FMT_GBRPF32BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRPF32BE);
pub const AV_PIX_FMT_GBRPF32LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRPF32LE);
pub const AV_PIX_FMT_GBRAPF32BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAPF32BE);
pub const AV_PIX_FMT_GBRAPF32LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GBRAPF32LE);
pub const AV_PIX_FMT_DRM_PRIME = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_DRM_PRIME);
pub const AV_PIX_FMT_OPENCL = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_OPENCL);
pub const AV_PIX_FMT_GRAY14BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY14BE);
pub const AV_PIX_FMT_GRAY14LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAY14LE);
pub const AV_PIX_FMT_GRAYF32BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAYF32BE);
pub const AV_PIX_FMT_GRAYF32LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_GRAYF32LE);
pub const AV_PIX_FMT_YUVA422P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P12BE);
pub const AV_PIX_FMT_YUVA422P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA422P12LE);
pub const AV_PIX_FMT_YUVA444P12BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P12BE);
pub const AV_PIX_FMT_YUVA444P12LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_YUVA444P12LE);
pub const AV_PIX_FMT_NV24 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV24);
pub const AV_PIX_FMT_NV42 = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NV42);
pub const AV_PIX_FMT_VULKAN = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_VULKAN);
pub const AV_PIX_FMT_Y210BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_Y210BE);
pub const AV_PIX_FMT_Y210LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_Y210LE);
pub const AV_PIX_FMT_X2RGB10LE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_X2RGB10LE);
pub const AV_PIX_FMT_X2RGB10BE = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_X2RGB10BE);
pub const AV_PIX_FMT_NB = @enumToInt(enum_AVPixelFormat.AV_PIX_FMT_NB);
pub const enum_AVColorPrimaries = extern enum(c_int) {
    AVCOL_PRI_RESERVED0 = 0,
    AVCOL_PRI_BT709 = 1,
    AVCOL_PRI_UNSPECIFIED = 2,
    AVCOL_PRI_RESERVED = 3,
    AVCOL_PRI_BT470M = 4,
    AVCOL_PRI_BT470BG = 5,
    AVCOL_PRI_SMPTE170M = 6,
    AVCOL_PRI_SMPTE240M = 7,
    AVCOL_PRI_FILM = 8,
    AVCOL_PRI_BT2020 = 9,
    AVCOL_PRI_SMPTE428 = 10,
    AVCOL_PRI_SMPTEST428_1 = 10,
    AVCOL_PRI_SMPTE431 = 11,
    AVCOL_PRI_SMPTE432 = 12,
    AVCOL_PRI_EBU3213 = 22,
    AVCOL_PRI_JEDEC_P22 = 22,
    AVCOL_PRI_NB = 23,
    _,
};
pub const AVCOL_PRI_RESERVED0 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_RESERVED0);
pub const AVCOL_PRI_BT709 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_BT709);
pub const AVCOL_PRI_UNSPECIFIED = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_UNSPECIFIED);
pub const AVCOL_PRI_RESERVED = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_RESERVED);
pub const AVCOL_PRI_BT470M = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_BT470M);
pub const AVCOL_PRI_BT470BG = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_BT470BG);
pub const AVCOL_PRI_SMPTE170M = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTE170M);
pub const AVCOL_PRI_SMPTE240M = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTE240M);
pub const AVCOL_PRI_FILM = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_FILM);
pub const AVCOL_PRI_BT2020 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_BT2020);
pub const AVCOL_PRI_SMPTE428 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTE428);
pub const AVCOL_PRI_SMPTEST428_1 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTEST428_1);
pub const AVCOL_PRI_SMPTE431 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTE431);
pub const AVCOL_PRI_SMPTE432 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_SMPTE432);
pub const AVCOL_PRI_EBU3213 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_EBU3213);
pub const AVCOL_PRI_JEDEC_P22 = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_JEDEC_P22);
pub const AVCOL_PRI_NB = @enumToInt(enum_AVColorPrimaries.AVCOL_PRI_NB);
pub const enum_AVColorTransferCharacteristic = extern enum(c_int) {
    AVCOL_TRC_RESERVED0 = 0,
    AVCOL_TRC_BT709 = 1,
    AVCOL_TRC_UNSPECIFIED = 2,
    AVCOL_TRC_RESERVED = 3,
    AVCOL_TRC_GAMMA22 = 4,
    AVCOL_TRC_GAMMA28 = 5,
    AVCOL_TRC_SMPTE170M = 6,
    AVCOL_TRC_SMPTE240M = 7,
    AVCOL_TRC_LINEAR = 8,
    AVCOL_TRC_LOG = 9,
    AVCOL_TRC_LOG_SQRT = 10,
    AVCOL_TRC_IEC61966_2_4 = 11,
    AVCOL_TRC_BT1361_ECG = 12,
    AVCOL_TRC_IEC61966_2_1 = 13,
    AVCOL_TRC_BT2020_10 = 14,
    AVCOL_TRC_BT2020_12 = 15,
    AVCOL_TRC_SMPTE2084 = 16,
    AVCOL_TRC_SMPTEST2084 = 16,
    AVCOL_TRC_SMPTE428 = 17,
    AVCOL_TRC_SMPTEST428_1 = 17,
    AVCOL_TRC_ARIB_STD_B67 = 18,
    AVCOL_TRC_NB = 19,
    _,
};
pub const AVCOL_TRC_RESERVED0 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_RESERVED0);
pub const AVCOL_TRC_BT709 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_BT709);
pub const AVCOL_TRC_UNSPECIFIED = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_UNSPECIFIED);
pub const AVCOL_TRC_RESERVED = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_RESERVED);
pub const AVCOL_TRC_GAMMA22 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_GAMMA22);
pub const AVCOL_TRC_GAMMA28 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_GAMMA28);
pub const AVCOL_TRC_SMPTE170M = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTE170M);
pub const AVCOL_TRC_SMPTE240M = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTE240M);
pub const AVCOL_TRC_LINEAR = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_LINEAR);
pub const AVCOL_TRC_LOG = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_LOG);
pub const AVCOL_TRC_LOG_SQRT = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_LOG_SQRT);
pub const AVCOL_TRC_IEC61966_2_4 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_IEC61966_2_4);
pub const AVCOL_TRC_BT1361_ECG = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_BT1361_ECG);
pub const AVCOL_TRC_IEC61966_2_1 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_IEC61966_2_1);
pub const AVCOL_TRC_BT2020_10 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_BT2020_10);
pub const AVCOL_TRC_BT2020_12 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_BT2020_12);
pub const AVCOL_TRC_SMPTE2084 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTE2084);
pub const AVCOL_TRC_SMPTEST2084 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTEST2084);
pub const AVCOL_TRC_SMPTE428 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTE428);
pub const AVCOL_TRC_SMPTEST428_1 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_SMPTEST428_1);
pub const AVCOL_TRC_ARIB_STD_B67 = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_ARIB_STD_B67);
pub const AVCOL_TRC_NB = @enumToInt(enum_AVColorTransferCharacteristic.AVCOL_TRC_NB);
pub const enum_AVColorSpace = extern enum(c_int) {
    AVCOL_SPC_RGB = 0,
    AVCOL_SPC_BT709 = 1,
    AVCOL_SPC_UNSPECIFIED = 2,
    AVCOL_SPC_RESERVED = 3,
    AVCOL_SPC_FCC = 4,
    AVCOL_SPC_BT470BG = 5,
    AVCOL_SPC_SMPTE170M = 6,
    AVCOL_SPC_SMPTE240M = 7,
    AVCOL_SPC_YCGCO = 8,
    AVCOL_SPC_YCOCG = 8,
    AVCOL_SPC_BT2020_NCL = 9,
    AVCOL_SPC_BT2020_CL = 10,
    AVCOL_SPC_SMPTE2085 = 11,
    AVCOL_SPC_CHROMA_DERIVED_NCL = 12,
    AVCOL_SPC_CHROMA_DERIVED_CL = 13,
    AVCOL_SPC_ICTCP = 14,
    AVCOL_SPC_NB = 15,
    _,
};
pub const AVCOL_SPC_RGB = @enumToInt(enum_AVColorSpace.AVCOL_SPC_RGB);
pub const AVCOL_SPC_BT709 = @enumToInt(enum_AVColorSpace.AVCOL_SPC_BT709);
pub const AVCOL_SPC_UNSPECIFIED = @enumToInt(enum_AVColorSpace.AVCOL_SPC_UNSPECIFIED);
pub const AVCOL_SPC_RESERVED = @enumToInt(enum_AVColorSpace.AVCOL_SPC_RESERVED);
pub const AVCOL_SPC_FCC = @enumToInt(enum_AVColorSpace.AVCOL_SPC_FCC);
pub const AVCOL_SPC_BT470BG = @enumToInt(enum_AVColorSpace.AVCOL_SPC_BT470BG);
pub const AVCOL_SPC_SMPTE170M = @enumToInt(enum_AVColorSpace.AVCOL_SPC_SMPTE170M);
pub const AVCOL_SPC_SMPTE240M = @enumToInt(enum_AVColorSpace.AVCOL_SPC_SMPTE240M);
pub const AVCOL_SPC_YCGCO = @enumToInt(enum_AVColorSpace.AVCOL_SPC_YCGCO);
pub const AVCOL_SPC_YCOCG = @enumToInt(enum_AVColorSpace.AVCOL_SPC_YCOCG);
pub const AVCOL_SPC_BT2020_NCL = @enumToInt(enum_AVColorSpace.AVCOL_SPC_BT2020_NCL);
pub const AVCOL_SPC_BT2020_CL = @enumToInt(enum_AVColorSpace.AVCOL_SPC_BT2020_CL);
pub const AVCOL_SPC_SMPTE2085 = @enumToInt(enum_AVColorSpace.AVCOL_SPC_SMPTE2085);
pub const AVCOL_SPC_CHROMA_DERIVED_NCL = @enumToInt(enum_AVColorSpace.AVCOL_SPC_CHROMA_DERIVED_NCL);
pub const AVCOL_SPC_CHROMA_DERIVED_CL = @enumToInt(enum_AVColorSpace.AVCOL_SPC_CHROMA_DERIVED_CL);
pub const AVCOL_SPC_ICTCP = @enumToInt(enum_AVColorSpace.AVCOL_SPC_ICTCP);
pub const AVCOL_SPC_NB = @enumToInt(enum_AVColorSpace.AVCOL_SPC_NB);
pub const enum_AVColorRange = extern enum(c_int) {
    AVCOL_RANGE_UNSPECIFIED = 0,
    AVCOL_RANGE_MPEG = 1,
    AVCOL_RANGE_JPEG = 2,
    AVCOL_RANGE_NB = 3,
    _,
};
pub const AVCOL_RANGE_UNSPECIFIED = @enumToInt(enum_AVColorRange.AVCOL_RANGE_UNSPECIFIED);
pub const AVCOL_RANGE_MPEG = @enumToInt(enum_AVColorRange.AVCOL_RANGE_MPEG);
pub const AVCOL_RANGE_JPEG = @enumToInt(enum_AVColorRange.AVCOL_RANGE_JPEG);
pub const AVCOL_RANGE_NB = @enumToInt(enum_AVColorRange.AVCOL_RANGE_NB);
pub const enum_AVChromaLocation = extern enum(c_int) {
    AVCHROMA_LOC_UNSPECIFIED = 0,
    AVCHROMA_LOC_LEFT = 1,
    AVCHROMA_LOC_CENTER = 2,
    AVCHROMA_LOC_TOPLEFT = 3,
    AVCHROMA_LOC_TOP = 4,
    AVCHROMA_LOC_BOTTOMLEFT = 5,
    AVCHROMA_LOC_BOTTOM = 6,
    AVCHROMA_LOC_NB = 7,
    _,
};
pub const AVCHROMA_LOC_UNSPECIFIED = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_UNSPECIFIED);
pub const AVCHROMA_LOC_LEFT = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_LEFT);
pub const AVCHROMA_LOC_CENTER = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_CENTER);
pub const AVCHROMA_LOC_TOPLEFT = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_TOPLEFT);
pub const AVCHROMA_LOC_TOP = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_TOP);
pub const AVCHROMA_LOC_BOTTOMLEFT = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_BOTTOMLEFT);
pub const AVCHROMA_LOC_BOTTOM = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_BOTTOM);
pub const AVCHROMA_LOC_NB = @enumToInt(enum_AVChromaLocation.AVCHROMA_LOC_NB);
pub fn av_x_if_null(arg_p: ?*const c_void, arg_x: ?*const c_void) callconv(.C) ?*c_void {
    var p = arg_p;
    var x = arg_x;
    return @intToPtr(?*c_void, @intCast(isize, @ptrToInt(if (p != null) p else x)));
}
pub extern fn av_int_list_length_for_size(elsize: c_uint, list: ?*const c_void, term: u64) c_uint;
pub extern fn av_fopen_utf8(path: [*c]const u8, mode: [*c]const u8) [*c]FILE;
pub extern fn av_get_time_base_q() AVRational;
pub extern fn av_fourcc_make_string(buf: [*c]u8, fourcc: u32) [*c]u8;
pub const enum_AVSampleFormat = extern enum(c_int) {
    AV_SAMPLE_FMT_NONE = -1,
    AV_SAMPLE_FMT_U8 = 0,
    AV_SAMPLE_FMT_S16 = 1,
    AV_SAMPLE_FMT_S32 = 2,
    AV_SAMPLE_FMT_FLT = 3,
    AV_SAMPLE_FMT_DBL = 4,
    AV_SAMPLE_FMT_U8P = 5,
    AV_SAMPLE_FMT_S16P = 6,
    AV_SAMPLE_FMT_S32P = 7,
    AV_SAMPLE_FMT_FLTP = 8,
    AV_SAMPLE_FMT_DBLP = 9,
    AV_SAMPLE_FMT_S64 = 10,
    AV_SAMPLE_FMT_S64P = 11,
    AV_SAMPLE_FMT_NB = 12,
    _,
};
pub const AV_SAMPLE_FMT_NONE = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_NONE);
pub const AV_SAMPLE_FMT_U8 = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_U8);
pub const AV_SAMPLE_FMT_S16 = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S16);
pub const AV_SAMPLE_FMT_S32 = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S32);
pub const AV_SAMPLE_FMT_FLT = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_FLT);
pub const AV_SAMPLE_FMT_DBL = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_DBL);
pub const AV_SAMPLE_FMT_U8P = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_U8P);
pub const AV_SAMPLE_FMT_S16P = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S16P);
pub const AV_SAMPLE_FMT_S32P = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S32P);
pub const AV_SAMPLE_FMT_FLTP = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_FLTP);
pub const AV_SAMPLE_FMT_DBLP = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_DBLP);
pub const AV_SAMPLE_FMT_S64 = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S64);
pub const AV_SAMPLE_FMT_S64P = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_S64P);
pub const AV_SAMPLE_FMT_NB = @enumToInt(enum_AVSampleFormat.AV_SAMPLE_FMT_NB);
pub extern fn av_get_sample_fmt_name(sample_fmt: enum_AVSampleFormat) [*c]const u8;
pub extern fn av_get_sample_fmt(name: [*c]const u8) enum_AVSampleFormat;
pub extern fn av_get_alt_sample_fmt(sample_fmt: enum_AVSampleFormat, planar: c_int) enum_AVSampleFormat;
pub extern fn av_get_packed_sample_fmt(sample_fmt: enum_AVSampleFormat) enum_AVSampleFormat;
pub extern fn av_get_planar_sample_fmt(sample_fmt: enum_AVSampleFormat) enum_AVSampleFormat;
pub extern fn av_get_sample_fmt_string(buf: [*c]u8, buf_size: c_int, sample_fmt: enum_AVSampleFormat) [*c]u8;
pub extern fn av_get_bytes_per_sample(sample_fmt: enum_AVSampleFormat) c_int;
pub extern fn av_sample_fmt_is_planar(sample_fmt: enum_AVSampleFormat) c_int;
pub extern fn av_samples_get_buffer_size(linesize: [*c]c_int, nb_channels: c_int, nb_samples: c_int, sample_fmt: enum_AVSampleFormat, @"align": c_int) c_int;
pub extern fn av_samples_fill_arrays(audio_data: [*c][*c]u8, linesize: [*c]c_int, buf: [*c]const u8, nb_channels: c_int, nb_samples: c_int, sample_fmt: enum_AVSampleFormat, @"align": c_int) c_int;
pub extern fn av_samples_alloc(audio_data: [*c][*c]u8, linesize: [*c]c_int, nb_channels: c_int, nb_samples: c_int, sample_fmt: enum_AVSampleFormat, @"align": c_int) c_int;
pub extern fn av_samples_alloc_array_and_samples(audio_data: [*c][*c][*c]u8, linesize: [*c]c_int, nb_channels: c_int, nb_samples: c_int, sample_fmt: enum_AVSampleFormat, @"align": c_int) c_int;
pub extern fn av_samples_copy(dst: [*c][*c]u8, src: [*c]const [*c]u8, dst_offset: c_int, src_offset: c_int, nb_samples: c_int, nb_channels: c_int, sample_fmt: enum_AVSampleFormat) c_int;
pub extern fn av_samples_set_silence(audio_data: [*c][*c]u8, offset: c_int, nb_samples: c_int, nb_channels: c_int, sample_fmt: enum_AVSampleFormat) c_int;
pub const struct_AVBuffer = opaque {};
pub const AVBuffer = struct_AVBuffer;
pub const struct_AVBufferRef = extern struct {
    buffer: ?*AVBuffer,
    data: [*c]u8,
    size: c_int,
};
pub const AVBufferRef = struct_AVBufferRef;
pub extern fn av_buffer_alloc(size: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_allocz(size: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_create(data: [*c]u8, size: c_int, free: ?fn (?*c_void, [*c]u8) callconv(.C) void, @"opaque": ?*c_void, flags: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_default_free(@"opaque": ?*c_void, data: [*c]u8) void;
pub extern fn av_buffer_ref(buf: [*c]AVBufferRef) [*c]AVBufferRef;
pub extern fn av_buffer_unref(buf: [*c][*c]AVBufferRef) void;
pub extern fn av_buffer_is_writable(buf: [*c]const AVBufferRef) c_int;
pub extern fn av_buffer_get_opaque(buf: [*c]const AVBufferRef) ?*c_void;
pub extern fn av_buffer_get_ref_count(buf: [*c]const AVBufferRef) c_int;
pub extern fn av_buffer_make_writable(buf: [*c][*c]AVBufferRef) c_int;
pub extern fn av_buffer_realloc(buf: [*c][*c]AVBufferRef, size: c_int) c_int;
pub extern fn av_buffer_replace(dst: [*c][*c]AVBufferRef, src: [*c]AVBufferRef) c_int;
pub const struct_AVBufferPool = opaque {};
pub const AVBufferPool = struct_AVBufferPool;
pub extern fn av_buffer_pool_init(size: c_int, alloc: ?fn (c_int) callconv(.C) [*c]AVBufferRef) ?*AVBufferPool;
pub extern fn av_buffer_pool_init2(size: c_int, @"opaque": ?*c_void, alloc: ?fn (?*c_void, c_int) callconv(.C) [*c]AVBufferRef, pool_free: ?fn (?*c_void) callconv(.C) void) ?*AVBufferPool;
pub extern fn av_buffer_pool_uninit(pool: [*c]?*AVBufferPool) void;
pub extern fn av_buffer_pool_get(pool: ?*AVBufferPool) [*c]AVBufferRef;
pub extern fn av_buffer_pool_buffer_get_opaque(ref: [*c]AVBufferRef) ?*c_void;
pub extern fn av_get_cpu_flags() c_int;
pub extern fn av_force_cpu_flags(flags: c_int) void;
pub extern fn av_set_cpu_flags_mask(mask: c_int) void;
pub extern fn av_parse_cpu_flags(s: [*c]const u8) c_int;
pub extern fn av_parse_cpu_caps(flags: [*c]c_uint, s: [*c]const u8) c_int;
pub extern fn av_cpu_count() c_int;
pub extern fn av_cpu_max_align() usize;
pub const enum_AVMatrixEncoding = extern enum(c_int) {
    AV_MATRIX_ENCODING_NONE,
    AV_MATRIX_ENCODING_DOLBY,
    AV_MATRIX_ENCODING_DPLII,
    AV_MATRIX_ENCODING_DPLIIX,
    AV_MATRIX_ENCODING_DPLIIZ,
    AV_MATRIX_ENCODING_DOLBYEX,
    AV_MATRIX_ENCODING_DOLBYHEADPHONE,
    AV_MATRIX_ENCODING_NB,
    _,
};
pub const AV_MATRIX_ENCODING_NONE = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_NONE);
pub const AV_MATRIX_ENCODING_DOLBY = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DOLBY);
pub const AV_MATRIX_ENCODING_DPLII = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DPLII);
pub const AV_MATRIX_ENCODING_DPLIIX = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DPLIIX);
pub const AV_MATRIX_ENCODING_DPLIIZ = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DPLIIZ);
pub const AV_MATRIX_ENCODING_DOLBYEX = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DOLBYEX);
pub const AV_MATRIX_ENCODING_DOLBYHEADPHONE = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_DOLBYHEADPHONE);
pub const AV_MATRIX_ENCODING_NB = @enumToInt(enum_AVMatrixEncoding.AV_MATRIX_ENCODING_NB);
pub extern fn av_get_channel_layout(name: [*c]const u8) u64;
pub extern fn av_get_extended_channel_layout(name: [*c]const u8, channel_layout: [*c]u64, nb_channels: [*c]c_int) c_int;
pub extern fn av_get_channel_layout_string(buf: [*c]u8, buf_size: c_int, nb_channels: c_int, channel_layout: u64) void;
pub const struct_AVBPrint = opaque {};
pub extern fn av_bprint_channel_layout(bp: ?*struct_AVBPrint, nb_channels: c_int, channel_layout: u64) void;
pub extern fn av_get_channel_layout_nb_channels(channel_layout: u64) c_int;
pub extern fn av_get_default_channel_layout(nb_channels: c_int) i64;
pub extern fn av_get_channel_layout_channel_index(channel_layout: u64, channel: u64) c_int;
pub extern fn av_channel_layout_extract_channel(channel_layout: u64, index: c_int) u64;
pub extern fn av_get_channel_name(channel: u64) [*c]const u8;
pub extern fn av_get_channel_description(channel: u64) [*c]const u8;
pub extern fn av_get_standard_channel_layout(index: c_uint, layout: [*c]u64, name: [*c][*c]const u8) c_int;
pub const struct_AVDictionaryEntry = extern struct {
    key: [*c]u8,
    value: [*c]u8,
};
pub const AVDictionaryEntry = struct_AVDictionaryEntry;
pub const struct_AVDictionary = opaque {};
pub const AVDictionary = struct_AVDictionary;
pub extern fn av_dict_get(m: ?*const AVDictionary, key: [*c]const u8, prev: [*c]const AVDictionaryEntry, flags: c_int) [*c]AVDictionaryEntry;
pub extern fn av_dict_count(m: ?*const AVDictionary) c_int;
pub extern fn av_dict_set(pm: [*c]?*AVDictionary, key: [*c]const u8, value: [*c]const u8, flags: c_int) c_int;
pub extern fn av_dict_set_int(pm: [*c]?*AVDictionary, key: [*c]const u8, value: i64, flags: c_int) c_int;
pub extern fn av_dict_parse_string(pm: [*c]?*AVDictionary, str: [*c]const u8, key_val_sep: [*c]const u8, pairs_sep: [*c]const u8, flags: c_int) c_int;
pub extern fn av_dict_copy(dst: [*c]?*AVDictionary, src: ?*const AVDictionary, flags: c_int) c_int;
pub extern fn av_dict_free(m: [*c]?*AVDictionary) void;
pub extern fn av_dict_get_string(m: ?*const AVDictionary, buffer: [*c][*c]u8, key_val_sep: u8, pairs_sep: u8) c_int;
pub const enum_AVFrameSideDataType = extern enum(c_int) {
    AV_FRAME_DATA_PANSCAN,
    AV_FRAME_DATA_A53_CC,
    AV_FRAME_DATA_STEREO3D,
    AV_FRAME_DATA_MATRIXENCODING,
    AV_FRAME_DATA_DOWNMIX_INFO,
    AV_FRAME_DATA_REPLAYGAIN,
    AV_FRAME_DATA_DISPLAYMATRIX,
    AV_FRAME_DATA_AFD,
    AV_FRAME_DATA_MOTION_VECTORS,
    AV_FRAME_DATA_SKIP_SAMPLES,
    AV_FRAME_DATA_AUDIO_SERVICE_TYPE,
    AV_FRAME_DATA_MASTERING_DISPLAY_METADATA,
    AV_FRAME_DATA_GOP_TIMECODE,
    AV_FRAME_DATA_SPHERICAL,
    AV_FRAME_DATA_CONTENT_LIGHT_LEVEL,
    AV_FRAME_DATA_ICC_PROFILE,
    AV_FRAME_DATA_QP_TABLE_PROPERTIES,
    AV_FRAME_DATA_QP_TABLE_DATA,
    AV_FRAME_DATA_S12M_TIMECODE,
    AV_FRAME_DATA_DYNAMIC_HDR_PLUS,
    AV_FRAME_DATA_REGIONS_OF_INTEREST,
    AV_FRAME_DATA_VIDEO_ENC_PARAMS,
    AV_FRAME_DATA_SEI_UNREGISTERED,
    AV_FRAME_DATA_FILM_GRAIN_PARAMS,
    _,
};
pub const AV_FRAME_DATA_PANSCAN = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_PANSCAN);
pub const AV_FRAME_DATA_A53_CC = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_A53_CC);
pub const AV_FRAME_DATA_STEREO3D = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_STEREO3D);
pub const AV_FRAME_DATA_MATRIXENCODING = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_MATRIXENCODING);
pub const AV_FRAME_DATA_DOWNMIX_INFO = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_DOWNMIX_INFO);
pub const AV_FRAME_DATA_REPLAYGAIN = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_REPLAYGAIN);
pub const AV_FRAME_DATA_DISPLAYMATRIX = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_DISPLAYMATRIX);
pub const AV_FRAME_DATA_AFD = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_AFD);
pub const AV_FRAME_DATA_MOTION_VECTORS = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_MOTION_VECTORS);
pub const AV_FRAME_DATA_SKIP_SAMPLES = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_SKIP_SAMPLES);
pub const AV_FRAME_DATA_AUDIO_SERVICE_TYPE = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_AUDIO_SERVICE_TYPE);
pub const AV_FRAME_DATA_MASTERING_DISPLAY_METADATA = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_MASTERING_DISPLAY_METADATA);
pub const AV_FRAME_DATA_GOP_TIMECODE = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_GOP_TIMECODE);
pub const AV_FRAME_DATA_SPHERICAL = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_SPHERICAL);
pub const AV_FRAME_DATA_CONTENT_LIGHT_LEVEL = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_CONTENT_LIGHT_LEVEL);
pub const AV_FRAME_DATA_ICC_PROFILE = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_ICC_PROFILE);
pub const AV_FRAME_DATA_QP_TABLE_PROPERTIES = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_QP_TABLE_PROPERTIES);
pub const AV_FRAME_DATA_QP_TABLE_DATA = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_QP_TABLE_DATA);
pub const AV_FRAME_DATA_S12M_TIMECODE = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_S12M_TIMECODE);
pub const AV_FRAME_DATA_DYNAMIC_HDR_PLUS = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_DYNAMIC_HDR_PLUS);
pub const AV_FRAME_DATA_REGIONS_OF_INTEREST = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_REGIONS_OF_INTEREST);
pub const AV_FRAME_DATA_VIDEO_ENC_PARAMS = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_VIDEO_ENC_PARAMS);
pub const AV_FRAME_DATA_SEI_UNREGISTERED = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_SEI_UNREGISTERED);
pub const AV_FRAME_DATA_FILM_GRAIN_PARAMS = @enumToInt(enum_AVFrameSideDataType.AV_FRAME_DATA_FILM_GRAIN_PARAMS);
pub const enum_AVActiveFormatDescription = extern enum(c_int) {
    AV_AFD_SAME = 8,
    AV_AFD_4_3 = 9,
    AV_AFD_16_9 = 10,
    AV_AFD_14_9 = 11,
    AV_AFD_4_3_SP_14_9 = 13,
    AV_AFD_16_9_SP_14_9 = 14,
    AV_AFD_SP_4_3 = 15,
    _,
};
pub const AV_AFD_SAME = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_SAME);
pub const AV_AFD_4_3 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_4_3);
pub const AV_AFD_16_9 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_16_9);
pub const AV_AFD_14_9 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_14_9);
pub const AV_AFD_4_3_SP_14_9 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_4_3_SP_14_9);
pub const AV_AFD_16_9_SP_14_9 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_16_9_SP_14_9);
pub const AV_AFD_SP_4_3 = @enumToInt(enum_AVActiveFormatDescription.AV_AFD_SP_4_3);
pub const struct_AVFrameSideData = extern struct {
    type: enum_AVFrameSideDataType,
    data: [*c]u8,
    size: c_int,
    metadata: ?*AVDictionary,
    buf: [*c]AVBufferRef,
};
pub const AVFrameSideData = struct_AVFrameSideData;
pub const struct_AVRegionOfInterest = extern struct {
    self_size: u32,
    top: c_int,
    bottom: c_int,
    left: c_int,
    right: c_int,
    qoffset: AVRational,
};
pub const AVRegionOfInterest = struct_AVRegionOfInterest;
pub const struct_AVFrame = extern struct {
    data: [8][*c]u8,
    linesize: [8]c_int,
    extended_data: [*c][*c]u8,
    width: c_int,
    height: c_int,
    nb_samples: c_int,
    format: c_int,
    key_frame: c_int,
    pict_type: enum_AVPictureType,
    sample_aspect_ratio: AVRational,
    pts: i64,
    pkt_pts: i64,
    pkt_dts: i64,
    coded_picture_number: c_int,
    display_picture_number: c_int,
    quality: c_int,
    @"opaque": ?*c_void,
    @"error": [8]u64,
    repeat_pict: c_int,
    interlaced_frame: c_int,
    top_field_first: c_int,
    palette_has_changed: c_int,
    reordered_opaque: i64,
    sample_rate: c_int,
    channel_layout: u64,
    buf: [8][*c]AVBufferRef,
    extended_buf: [*c][*c]AVBufferRef,
    nb_extended_buf: c_int,
    side_data: [*c][*c]AVFrameSideData,
    nb_side_data: c_int,
    flags: c_int,
    color_range: enum_AVColorRange,
    color_primaries: enum_AVColorPrimaries,
    color_trc: enum_AVColorTransferCharacteristic,
    colorspace: enum_AVColorSpace,
    chroma_location: enum_AVChromaLocation,
    best_effort_timestamp: i64,
    pkt_pos: i64,
    pkt_duration: i64,
    metadata: ?*AVDictionary,
    decode_error_flags: c_int,
    channels: c_int,
    pkt_size: c_int,
    qscale_table: [*c]i8,
    qstride: c_int,
    qscale_type: c_int,
    qp_table_buf: [*c]AVBufferRef,
    hw_frames_ctx: [*c]AVBufferRef,
    opaque_ref: [*c]AVBufferRef,
    crop_top: usize,
    crop_bottom: usize,
    crop_left: usize,
    crop_right: usize,
    private_ref: [*c]AVBufferRef,
};
pub const AVFrame = struct_AVFrame;
pub extern fn av_frame_get_best_effort_timestamp(frame: [*c]const AVFrame) i64;
pub extern fn av_frame_set_best_effort_timestamp(frame: [*c]AVFrame, val: i64) void;
pub extern fn av_frame_get_pkt_duration(frame: [*c]const AVFrame) i64;
pub extern fn av_frame_set_pkt_duration(frame: [*c]AVFrame, val: i64) void;
pub extern fn av_frame_get_pkt_pos(frame: [*c]const AVFrame) i64;
pub extern fn av_frame_set_pkt_pos(frame: [*c]AVFrame, val: i64) void;
pub extern fn av_frame_get_channel_layout(frame: [*c]const AVFrame) i64;
pub extern fn av_frame_set_channel_layout(frame: [*c]AVFrame, val: i64) void;
pub extern fn av_frame_get_channels(frame: [*c]const AVFrame) c_int;
pub extern fn av_frame_set_channels(frame: [*c]AVFrame, val: c_int) void;
pub extern fn av_frame_get_sample_rate(frame: [*c]const AVFrame) c_int;
pub extern fn av_frame_set_sample_rate(frame: [*c]AVFrame, val: c_int) void;
pub extern fn av_frame_get_metadata(frame: [*c]const AVFrame) ?*AVDictionary;
pub extern fn av_frame_set_metadata(frame: [*c]AVFrame, val: ?*AVDictionary) void;
pub extern fn av_frame_get_decode_error_flags(frame: [*c]const AVFrame) c_int;
pub extern fn av_frame_set_decode_error_flags(frame: [*c]AVFrame, val: c_int) void;
pub extern fn av_frame_get_pkt_size(frame: [*c]const AVFrame) c_int;
pub extern fn av_frame_set_pkt_size(frame: [*c]AVFrame, val: c_int) void;
pub extern fn av_frame_get_qp_table(f: [*c]AVFrame, stride: [*c]c_int, type: [*c]c_int) [*c]i8;
pub extern fn av_frame_set_qp_table(f: [*c]AVFrame, buf: [*c]AVBufferRef, stride: c_int, type: c_int) c_int;
pub extern fn av_frame_get_colorspace(frame: [*c]const AVFrame) enum_AVColorSpace;
pub extern fn av_frame_set_colorspace(frame: [*c]AVFrame, val: enum_AVColorSpace) void;
pub extern fn av_frame_get_color_range(frame: [*c]const AVFrame) enum_AVColorRange;
pub extern fn av_frame_set_color_range(frame: [*c]AVFrame, val: enum_AVColorRange) void;
pub extern fn av_get_colorspace_name(val: enum_AVColorSpace) [*c]const u8;
pub extern fn av_frame_alloc() [*c]AVFrame;
pub extern fn av_frame_free(frame: [*c][*c]AVFrame) void;
pub extern fn av_frame_ref(dst: [*c]AVFrame, src: [*c]const AVFrame) c_int;
pub extern fn av_frame_clone(src: [*c]const AVFrame) [*c]AVFrame;
pub extern fn av_frame_unref(frame: [*c]AVFrame) void;
pub extern fn av_frame_move_ref(dst: [*c]AVFrame, src: [*c]AVFrame) void;
pub extern fn av_frame_get_buffer(frame: [*c]AVFrame, @"align": c_int) c_int;
pub extern fn av_frame_is_writable(frame: [*c]AVFrame) c_int;
pub extern fn av_frame_make_writable(frame: [*c]AVFrame) c_int;
pub extern fn av_frame_copy(dst: [*c]AVFrame, src: [*c]const AVFrame) c_int;
pub extern fn av_frame_copy_props(dst: [*c]AVFrame, src: [*c]const AVFrame) c_int;
pub extern fn av_frame_get_plane_buffer(frame: [*c]AVFrame, plane: c_int) [*c]AVBufferRef;
pub extern fn av_frame_new_side_data(frame: [*c]AVFrame, type: enum_AVFrameSideDataType, size: c_int) [*c]AVFrameSideData;
pub extern fn av_frame_new_side_data_from_buf(frame: [*c]AVFrame, type: enum_AVFrameSideDataType, buf: [*c]AVBufferRef) [*c]AVFrameSideData;
pub extern fn av_frame_get_side_data(frame: [*c]const AVFrame, type: enum_AVFrameSideDataType) [*c]AVFrameSideData;
pub extern fn av_frame_remove_side_data(frame: [*c]AVFrame, type: enum_AVFrameSideDataType) void;
const enum_unnamed_14 = extern enum(c_int) {
    AV_FRAME_CROP_UNALIGNED = 1,
    _,
};
pub const AV_FRAME_CROP_UNALIGNED = @enumToInt(enum_unnamed_14.AV_FRAME_CROP_UNALIGNED);
pub extern fn av_frame_apply_cropping(frame: [*c]AVFrame, flags: c_int) c_int;
pub extern fn av_frame_side_data_name(type: enum_AVFrameSideDataType) [*c]const u8;
pub const enum_AVHWDeviceType = extern enum(c_int) {
    AV_HWDEVICE_TYPE_NONE,
    AV_HWDEVICE_TYPE_VDPAU,
    AV_HWDEVICE_TYPE_CUDA,
    AV_HWDEVICE_TYPE_VAAPI,
    AV_HWDEVICE_TYPE_DXVA2,
    AV_HWDEVICE_TYPE_QSV,
    AV_HWDEVICE_TYPE_VIDEOTOOLBOX,
    AV_HWDEVICE_TYPE_D3D11VA,
    AV_HWDEVICE_TYPE_DRM,
    AV_HWDEVICE_TYPE_OPENCL,
    AV_HWDEVICE_TYPE_MEDIACODEC,
    AV_HWDEVICE_TYPE_VULKAN,
    _,
};
pub const AV_HWDEVICE_TYPE_NONE = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_NONE);
pub const AV_HWDEVICE_TYPE_VDPAU = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_VDPAU);
pub const AV_HWDEVICE_TYPE_CUDA = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_CUDA);
pub const AV_HWDEVICE_TYPE_VAAPI = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_VAAPI);
pub const AV_HWDEVICE_TYPE_DXVA2 = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_DXVA2);
pub const AV_HWDEVICE_TYPE_QSV = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_QSV);
pub const AV_HWDEVICE_TYPE_VIDEOTOOLBOX = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_VIDEOTOOLBOX);
pub const AV_HWDEVICE_TYPE_D3D11VA = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_D3D11VA);
pub const AV_HWDEVICE_TYPE_DRM = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_DRM);
pub const AV_HWDEVICE_TYPE_OPENCL = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_OPENCL);
pub const AV_HWDEVICE_TYPE_MEDIACODEC = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_MEDIACODEC);
pub const AV_HWDEVICE_TYPE_VULKAN = @enumToInt(enum_AVHWDeviceType.AV_HWDEVICE_TYPE_VULKAN);
pub const struct_AVHWDeviceInternal = opaque {};
pub const AVHWDeviceInternal = struct_AVHWDeviceInternal;
pub const struct_AVHWDeviceContext = extern struct {
    av_class: [*c]const AVClass,
    internal: ?*AVHWDeviceInternal,
    type: enum_AVHWDeviceType,
    hwctx: ?*c_void,
    free: ?fn ([*c]struct_AVHWDeviceContext) callconv(.C) void,
    user_opaque: ?*c_void,
};
pub const AVHWDeviceContext = struct_AVHWDeviceContext;
pub const struct_AVHWFramesInternal = opaque {};
pub const AVHWFramesInternal = struct_AVHWFramesInternal;
pub const struct_AVHWFramesContext = extern struct {
    av_class: [*c]const AVClass,
    internal: ?*AVHWFramesInternal,
    device_ref: [*c]AVBufferRef,
    device_ctx: [*c]AVHWDeviceContext,
    hwctx: ?*c_void,
    free: ?fn ([*c]struct_AVHWFramesContext) callconv(.C) void,
    user_opaque: ?*c_void,
    pool: ?*AVBufferPool,
    initial_pool_size: c_int,
    format: enum_AVPixelFormat,
    sw_format: enum_AVPixelFormat,
    width: c_int,
    height: c_int,
};
pub const AVHWFramesContext = struct_AVHWFramesContext;
pub extern fn av_hwdevice_find_type_by_name(name: [*c]const u8) enum_AVHWDeviceType;
pub extern fn av_hwdevice_get_type_name(type: enum_AVHWDeviceType) [*c]const u8;
pub extern fn av_hwdevice_iterate_types(prev: enum_AVHWDeviceType) enum_AVHWDeviceType;
pub extern fn av_hwdevice_ctx_alloc(type: enum_AVHWDeviceType) [*c]AVBufferRef;
pub extern fn av_hwdevice_ctx_init(ref: [*c]AVBufferRef) c_int;
pub extern fn av_hwdevice_ctx_create(device_ctx: [*c][*c]AVBufferRef, type: enum_AVHWDeviceType, device: [*c]const u8, opts: ?*AVDictionary, flags: c_int) c_int;
pub extern fn av_hwdevice_ctx_create_derived(dst_ctx: [*c][*c]AVBufferRef, type: enum_AVHWDeviceType, src_ctx: [*c]AVBufferRef, flags: c_int) c_int;
pub extern fn av_hwdevice_ctx_create_derived_opts(dst_ctx: [*c][*c]AVBufferRef, type: enum_AVHWDeviceType, src_ctx: [*c]AVBufferRef, options: ?*AVDictionary, flags: c_int) c_int;
pub extern fn av_hwframe_ctx_alloc(device_ctx: [*c]AVBufferRef) [*c]AVBufferRef;
pub extern fn av_hwframe_ctx_init(ref: [*c]AVBufferRef) c_int;
pub extern fn av_hwframe_get_buffer(hwframe_ctx: [*c]AVBufferRef, frame: [*c]AVFrame, flags: c_int) c_int;
pub extern fn av_hwframe_transfer_data(dst: [*c]AVFrame, src: [*c]const AVFrame, flags: c_int) c_int;
pub const enum_AVHWFrameTransferDirection = extern enum(c_int) {
    AV_HWFRAME_TRANSFER_DIRECTION_FROM,
    AV_HWFRAME_TRANSFER_DIRECTION_TO,
    _,
};
pub const AV_HWFRAME_TRANSFER_DIRECTION_FROM = @enumToInt(enum_AVHWFrameTransferDirection.AV_HWFRAME_TRANSFER_DIRECTION_FROM);
pub const AV_HWFRAME_TRANSFER_DIRECTION_TO = @enumToInt(enum_AVHWFrameTransferDirection.AV_HWFRAME_TRANSFER_DIRECTION_TO);
pub extern fn av_hwframe_transfer_get_formats(hwframe_ctx: [*c]AVBufferRef, dir: enum_AVHWFrameTransferDirection, formats: [*c][*c]enum_AVPixelFormat, flags: c_int) c_int;
pub const struct_AVHWFramesConstraints = extern struct {
    valid_hw_formats: [*c]enum_AVPixelFormat,
    valid_sw_formats: [*c]enum_AVPixelFormat,
    min_width: c_int,
    min_height: c_int,
    max_width: c_int,
    max_height: c_int,
};
pub const AVHWFramesConstraints = struct_AVHWFramesConstraints;
pub extern fn av_hwdevice_hwconfig_alloc(device_ctx: [*c]AVBufferRef) ?*c_void;
pub extern fn av_hwdevice_get_hwframe_constraints(ref: [*c]AVBufferRef, hwconfig: ?*const c_void) [*c]AVHWFramesConstraints;
pub extern fn av_hwframe_constraints_free(constraints: [*c][*c]AVHWFramesConstraints) void;
const enum_unnamed_15 = extern enum(c_int) {
    AV_HWFRAME_MAP_READ = 1,
    AV_HWFRAME_MAP_WRITE = 2,
    AV_HWFRAME_MAP_OVERWRITE = 4,
    AV_HWFRAME_MAP_DIRECT = 8,
    _,
};
pub const AV_HWFRAME_MAP_READ = @enumToInt(enum_unnamed_15.AV_HWFRAME_MAP_READ);
pub const AV_HWFRAME_MAP_WRITE = @enumToInt(enum_unnamed_15.AV_HWFRAME_MAP_WRITE);
pub const AV_HWFRAME_MAP_OVERWRITE = @enumToInt(enum_unnamed_15.AV_HWFRAME_MAP_OVERWRITE);
pub const AV_HWFRAME_MAP_DIRECT = @enumToInt(enum_unnamed_15.AV_HWFRAME_MAP_DIRECT);
pub extern fn av_hwframe_map(dst: [*c]AVFrame, src: [*c]const AVFrame, flags: c_int) c_int;
pub extern fn av_hwframe_ctx_create_derived(derived_frame_ctx: [*c][*c]AVBufferRef, format: enum_AVPixelFormat, derived_device_ctx: [*c]AVBufferRef, source_frame_ctx: [*c]AVBufferRef, flags: c_int) c_int;
pub const enum_AVCodecID = extern enum(c_int) {
    AV_CODEC_ID_NONE = 0,
    AV_CODEC_ID_MPEG1VIDEO = 1,
    AV_CODEC_ID_MPEG2VIDEO = 2,
    AV_CODEC_ID_H261 = 3,
    AV_CODEC_ID_H263 = 4,
    AV_CODEC_ID_RV10 = 5,
    AV_CODEC_ID_RV20 = 6,
    AV_CODEC_ID_MJPEG = 7,
    AV_CODEC_ID_MJPEGB = 8,
    AV_CODEC_ID_LJPEG = 9,
    AV_CODEC_ID_SP5X = 10,
    AV_CODEC_ID_JPEGLS = 11,
    AV_CODEC_ID_MPEG4 = 12,
    AV_CODEC_ID_RAWVIDEO = 13,
    AV_CODEC_ID_MSMPEG4V1 = 14,
    AV_CODEC_ID_MSMPEG4V2 = 15,
    AV_CODEC_ID_MSMPEG4V3 = 16,
    AV_CODEC_ID_WMV1 = 17,
    AV_CODEC_ID_WMV2 = 18,
    AV_CODEC_ID_H263P = 19,
    AV_CODEC_ID_H263I = 20,
    AV_CODEC_ID_FLV1 = 21,
    AV_CODEC_ID_SVQ1 = 22,
    AV_CODEC_ID_SVQ3 = 23,
    AV_CODEC_ID_DVVIDEO = 24,
    AV_CODEC_ID_HUFFYUV = 25,
    AV_CODEC_ID_CYUV = 26,
    AV_CODEC_ID_H264 = 27,
    AV_CODEC_ID_INDEO3 = 28,
    AV_CODEC_ID_VP3 = 29,
    AV_CODEC_ID_THEORA = 30,
    AV_CODEC_ID_ASV1 = 31,
    AV_CODEC_ID_ASV2 = 32,
    AV_CODEC_ID_FFV1 = 33,
    AV_CODEC_ID_4XM = 34,
    AV_CODEC_ID_VCR1 = 35,
    AV_CODEC_ID_CLJR = 36,
    AV_CODEC_ID_MDEC = 37,
    AV_CODEC_ID_ROQ = 38,
    AV_CODEC_ID_INTERPLAY_VIDEO = 39,
    AV_CODEC_ID_XAN_WC3 = 40,
    AV_CODEC_ID_XAN_WC4 = 41,
    AV_CODEC_ID_RPZA = 42,
    AV_CODEC_ID_CINEPAK = 43,
    AV_CODEC_ID_WS_VQA = 44,
    AV_CODEC_ID_MSRLE = 45,
    AV_CODEC_ID_MSVIDEO1 = 46,
    AV_CODEC_ID_IDCIN = 47,
    AV_CODEC_ID_8BPS = 48,
    AV_CODEC_ID_SMC = 49,
    AV_CODEC_ID_FLIC = 50,
    AV_CODEC_ID_TRUEMOTION1 = 51,
    AV_CODEC_ID_VMDVIDEO = 52,
    AV_CODEC_ID_MSZH = 53,
    AV_CODEC_ID_ZLIB = 54,
    AV_CODEC_ID_QTRLE = 55,
    AV_CODEC_ID_TSCC = 56,
    AV_CODEC_ID_ULTI = 57,
    AV_CODEC_ID_QDRAW = 58,
    AV_CODEC_ID_VIXL = 59,
    AV_CODEC_ID_QPEG = 60,
    AV_CODEC_ID_PNG = 61,
    AV_CODEC_ID_PPM = 62,
    AV_CODEC_ID_PBM = 63,
    AV_CODEC_ID_PGM = 64,
    AV_CODEC_ID_PGMYUV = 65,
    AV_CODEC_ID_PAM = 66,
    AV_CODEC_ID_FFVHUFF = 67,
    AV_CODEC_ID_RV30 = 68,
    AV_CODEC_ID_RV40 = 69,
    AV_CODEC_ID_VC1 = 70,
    AV_CODEC_ID_WMV3 = 71,
    AV_CODEC_ID_LOCO = 72,
    AV_CODEC_ID_WNV1 = 73,
    AV_CODEC_ID_AASC = 74,
    AV_CODEC_ID_INDEO2 = 75,
    AV_CODEC_ID_FRAPS = 76,
    AV_CODEC_ID_TRUEMOTION2 = 77,
    AV_CODEC_ID_BMP = 78,
    AV_CODEC_ID_CSCD = 79,
    AV_CODEC_ID_MMVIDEO = 80,
    AV_CODEC_ID_ZMBV = 81,
    AV_CODEC_ID_AVS = 82,
    AV_CODEC_ID_SMACKVIDEO = 83,
    AV_CODEC_ID_NUV = 84,
    AV_CODEC_ID_KMVC = 85,
    AV_CODEC_ID_FLASHSV = 86,
    AV_CODEC_ID_CAVS = 87,
    AV_CODEC_ID_JPEG2000 = 88,
    AV_CODEC_ID_VMNC = 89,
    AV_CODEC_ID_VP5 = 90,
    AV_CODEC_ID_VP6 = 91,
    AV_CODEC_ID_VP6F = 92,
    AV_CODEC_ID_TARGA = 93,
    AV_CODEC_ID_DSICINVIDEO = 94,
    AV_CODEC_ID_TIERTEXSEQVIDEO = 95,
    AV_CODEC_ID_TIFF = 96,
    AV_CODEC_ID_GIF = 97,
    AV_CODEC_ID_DXA = 98,
    AV_CODEC_ID_DNXHD = 99,
    AV_CODEC_ID_THP = 100,
    AV_CODEC_ID_SGI = 101,
    AV_CODEC_ID_C93 = 102,
    AV_CODEC_ID_BETHSOFTVID = 103,
    AV_CODEC_ID_PTX = 104,
    AV_CODEC_ID_TXD = 105,
    AV_CODEC_ID_VP6A = 106,
    AV_CODEC_ID_AMV = 107,
    AV_CODEC_ID_VB = 108,
    AV_CODEC_ID_PCX = 109,
    AV_CODEC_ID_SUNRAST = 110,
    AV_CODEC_ID_INDEO4 = 111,
    AV_CODEC_ID_INDEO5 = 112,
    AV_CODEC_ID_MIMIC = 113,
    AV_CODEC_ID_RL2 = 114,
    AV_CODEC_ID_ESCAPE124 = 115,
    AV_CODEC_ID_DIRAC = 116,
    AV_CODEC_ID_BFI = 117,
    AV_CODEC_ID_CMV = 118,
    AV_CODEC_ID_MOTIONPIXELS = 119,
    AV_CODEC_ID_TGV = 120,
    AV_CODEC_ID_TGQ = 121,
    AV_CODEC_ID_TQI = 122,
    AV_CODEC_ID_AURA = 123,
    AV_CODEC_ID_AURA2 = 124,
    AV_CODEC_ID_V210X = 125,
    AV_CODEC_ID_TMV = 126,
    AV_CODEC_ID_V210 = 127,
    AV_CODEC_ID_DPX = 128,
    AV_CODEC_ID_MAD = 129,
    AV_CODEC_ID_FRWU = 130,
    AV_CODEC_ID_FLASHSV2 = 131,
    AV_CODEC_ID_CDGRAPHICS = 132,
    AV_CODEC_ID_R210 = 133,
    AV_CODEC_ID_ANM = 134,
    AV_CODEC_ID_BINKVIDEO = 135,
    AV_CODEC_ID_IFF_ILBM = 136,
    AV_CODEC_ID_KGV1 = 137,
    AV_CODEC_ID_YOP = 138,
    AV_CODEC_ID_VP8 = 139,
    AV_CODEC_ID_PICTOR = 140,
    AV_CODEC_ID_ANSI = 141,
    AV_CODEC_ID_A64_MULTI = 142,
    AV_CODEC_ID_A64_MULTI5 = 143,
    AV_CODEC_ID_R10K = 144,
    AV_CODEC_ID_MXPEG = 145,
    AV_CODEC_ID_LAGARITH = 146,
    AV_CODEC_ID_PRORES = 147,
    AV_CODEC_ID_JV = 148,
    AV_CODEC_ID_DFA = 149,
    AV_CODEC_ID_WMV3IMAGE = 150,
    AV_CODEC_ID_VC1IMAGE = 151,
    AV_CODEC_ID_UTVIDEO = 152,
    AV_CODEC_ID_BMV_VIDEO = 153,
    AV_CODEC_ID_VBLE = 154,
    AV_CODEC_ID_DXTORY = 155,
    AV_CODEC_ID_V410 = 156,
    AV_CODEC_ID_XWD = 157,
    AV_CODEC_ID_CDXL = 158,
    AV_CODEC_ID_XBM = 159,
    AV_CODEC_ID_ZEROCODEC = 160,
    AV_CODEC_ID_MSS1 = 161,
    AV_CODEC_ID_MSA1 = 162,
    AV_CODEC_ID_TSCC2 = 163,
    AV_CODEC_ID_MTS2 = 164,
    AV_CODEC_ID_CLLC = 165,
    AV_CODEC_ID_MSS2 = 166,
    AV_CODEC_ID_VP9 = 167,
    AV_CODEC_ID_AIC = 168,
    AV_CODEC_ID_ESCAPE130 = 169,
    AV_CODEC_ID_G2M = 170,
    AV_CODEC_ID_WEBP = 171,
    AV_CODEC_ID_HNM4_VIDEO = 172,
    AV_CODEC_ID_HEVC = 173,
    AV_CODEC_ID_FIC = 174,
    AV_CODEC_ID_ALIAS_PIX = 175,
    AV_CODEC_ID_BRENDER_PIX = 176,
    AV_CODEC_ID_PAF_VIDEO = 177,
    AV_CODEC_ID_EXR = 178,
    AV_CODEC_ID_VP7 = 179,
    AV_CODEC_ID_SANM = 180,
    AV_CODEC_ID_SGIRLE = 181,
    AV_CODEC_ID_MVC1 = 182,
    AV_CODEC_ID_MVC2 = 183,
    AV_CODEC_ID_HQX = 184,
    AV_CODEC_ID_TDSC = 185,
    AV_CODEC_ID_HQ_HQA = 186,
    AV_CODEC_ID_HAP = 187,
    AV_CODEC_ID_DDS = 188,
    AV_CODEC_ID_DXV = 189,
    AV_CODEC_ID_SCREENPRESSO = 190,
    AV_CODEC_ID_RSCC = 191,
    AV_CODEC_ID_AVS2 = 192,
    AV_CODEC_ID_PGX = 193,
    AV_CODEC_ID_AVS3 = 194,
    AV_CODEC_ID_MSP2 = 195,
    AV_CODEC_ID_VVC = 196,
    AV_CODEC_ID_Y41P = 32768,
    AV_CODEC_ID_AVRP = 32769,
    AV_CODEC_ID_012V = 32770,
    AV_CODEC_ID_AVUI = 32771,
    AV_CODEC_ID_AYUV = 32772,
    AV_CODEC_ID_TARGA_Y216 = 32773,
    AV_CODEC_ID_V308 = 32774,
    AV_CODEC_ID_V408 = 32775,
    AV_CODEC_ID_YUV4 = 32776,
    AV_CODEC_ID_AVRN = 32777,
    AV_CODEC_ID_CPIA = 32778,
    AV_CODEC_ID_XFACE = 32779,
    AV_CODEC_ID_SNOW = 32780,
    AV_CODEC_ID_SMVJPEG = 32781,
    AV_CODEC_ID_APNG = 32782,
    AV_CODEC_ID_DAALA = 32783,
    AV_CODEC_ID_CFHD = 32784,
    AV_CODEC_ID_TRUEMOTION2RT = 32785,
    AV_CODEC_ID_M101 = 32786,
    AV_CODEC_ID_MAGICYUV = 32787,
    AV_CODEC_ID_SHEERVIDEO = 32788,
    AV_CODEC_ID_YLC = 32789,
    AV_CODEC_ID_PSD = 32790,
    AV_CODEC_ID_PIXLET = 32791,
    AV_CODEC_ID_SPEEDHQ = 32792,
    AV_CODEC_ID_FMVC = 32793,
    AV_CODEC_ID_SCPR = 32794,
    AV_CODEC_ID_CLEARVIDEO = 32795,
    AV_CODEC_ID_XPM = 32796,
    AV_CODEC_ID_AV1 = 32797,
    AV_CODEC_ID_BITPACKED = 32798,
    AV_CODEC_ID_MSCC = 32799,
    AV_CODEC_ID_SRGC = 32800,
    AV_CODEC_ID_SVG = 32801,
    AV_CODEC_ID_GDV = 32802,
    AV_CODEC_ID_FITS = 32803,
    AV_CODEC_ID_IMM4 = 32804,
    AV_CODEC_ID_PROSUMER = 32805,
    AV_CODEC_ID_MWSC = 32806,
    AV_CODEC_ID_WCMV = 32807,
    AV_CODEC_ID_RASC = 32808,
    AV_CODEC_ID_HYMT = 32809,
    AV_CODEC_ID_ARBC = 32810,
    AV_CODEC_ID_AGM = 32811,
    AV_CODEC_ID_LSCR = 32812,
    AV_CODEC_ID_VP4 = 32813,
    AV_CODEC_ID_IMM5 = 32814,
    AV_CODEC_ID_MVDV = 32815,
    AV_CODEC_ID_MVHA = 32816,
    AV_CODEC_ID_CDTOONS = 32817,
    AV_CODEC_ID_MV30 = 32818,
    AV_CODEC_ID_NOTCHLC = 32819,
    AV_CODEC_ID_PFM = 32820,
    AV_CODEC_ID_MOBICLIP = 32821,
    AV_CODEC_ID_PHOTOCD = 32822,
    AV_CODEC_ID_IPU = 32823,
    AV_CODEC_ID_ARGO = 32824,
    AV_CODEC_ID_CRI = 32825,
    AV_CODEC_ID_SIMBIOSIS_IMX = 32826,
    AV_CODEC_ID_SGA_VIDEO = 32827,
    AV_CODEC_ID_FIRST_AUDIO = 65536,
    AV_CODEC_ID_PCM_S16LE = 65536,
    AV_CODEC_ID_PCM_S16BE = 65537,
    AV_CODEC_ID_PCM_U16LE = 65538,
    AV_CODEC_ID_PCM_U16BE = 65539,
    AV_CODEC_ID_PCM_S8 = 65540,
    AV_CODEC_ID_PCM_U8 = 65541,
    AV_CODEC_ID_PCM_MULAW = 65542,
    AV_CODEC_ID_PCM_ALAW = 65543,
    AV_CODEC_ID_PCM_S32LE = 65544,
    AV_CODEC_ID_PCM_S32BE = 65545,
    AV_CODEC_ID_PCM_U32LE = 65546,
    AV_CODEC_ID_PCM_U32BE = 65547,
    AV_CODEC_ID_PCM_S24LE = 65548,
    AV_CODEC_ID_PCM_S24BE = 65549,
    AV_CODEC_ID_PCM_U24LE = 65550,
    AV_CODEC_ID_PCM_U24BE = 65551,
    AV_CODEC_ID_PCM_S24DAUD = 65552,
    AV_CODEC_ID_PCM_ZORK = 65553,
    AV_CODEC_ID_PCM_S16LE_PLANAR = 65554,
    AV_CODEC_ID_PCM_DVD = 65555,
    AV_CODEC_ID_PCM_F32BE = 65556,
    AV_CODEC_ID_PCM_F32LE = 65557,
    AV_CODEC_ID_PCM_F64BE = 65558,
    AV_CODEC_ID_PCM_F64LE = 65559,
    AV_CODEC_ID_PCM_BLURAY = 65560,
    AV_CODEC_ID_PCM_LXF = 65561,
    AV_CODEC_ID_S302M = 65562,
    AV_CODEC_ID_PCM_S8_PLANAR = 65563,
    AV_CODEC_ID_PCM_S24LE_PLANAR = 65564,
    AV_CODEC_ID_PCM_S32LE_PLANAR = 65565,
    AV_CODEC_ID_PCM_S16BE_PLANAR = 65566,
    AV_CODEC_ID_PCM_S64LE = 67584,
    AV_CODEC_ID_PCM_S64BE = 67585,
    AV_CODEC_ID_PCM_F16LE = 67586,
    AV_CODEC_ID_PCM_F24LE = 67587,
    AV_CODEC_ID_PCM_VIDC = 67588,
    AV_CODEC_ID_PCM_SGA = 67589,
    AV_CODEC_ID_ADPCM_IMA_QT = 69632,
    AV_CODEC_ID_ADPCM_IMA_WAV = 69633,
    AV_CODEC_ID_ADPCM_IMA_DK3 = 69634,
    AV_CODEC_ID_ADPCM_IMA_DK4 = 69635,
    AV_CODEC_ID_ADPCM_IMA_WS = 69636,
    AV_CODEC_ID_ADPCM_IMA_SMJPEG = 69637,
    AV_CODEC_ID_ADPCM_MS = 69638,
    AV_CODEC_ID_ADPCM_4XM = 69639,
    AV_CODEC_ID_ADPCM_XA = 69640,
    AV_CODEC_ID_ADPCM_ADX = 69641,
    AV_CODEC_ID_ADPCM_EA = 69642,
    AV_CODEC_ID_ADPCM_G726 = 69643,
    AV_CODEC_ID_ADPCM_CT = 69644,
    AV_CODEC_ID_ADPCM_SWF = 69645,
    AV_CODEC_ID_ADPCM_YAMAHA = 69646,
    AV_CODEC_ID_ADPCM_SBPRO_4 = 69647,
    AV_CODEC_ID_ADPCM_SBPRO_3 = 69648,
    AV_CODEC_ID_ADPCM_SBPRO_2 = 69649,
    AV_CODEC_ID_ADPCM_THP = 69650,
    AV_CODEC_ID_ADPCM_IMA_AMV = 69651,
    AV_CODEC_ID_ADPCM_EA_R1 = 69652,
    AV_CODEC_ID_ADPCM_EA_R3 = 69653,
    AV_CODEC_ID_ADPCM_EA_R2 = 69654,
    AV_CODEC_ID_ADPCM_IMA_EA_SEAD = 69655,
    AV_CODEC_ID_ADPCM_IMA_EA_EACS = 69656,
    AV_CODEC_ID_ADPCM_EA_XAS = 69657,
    AV_CODEC_ID_ADPCM_EA_MAXIS_XA = 69658,
    AV_CODEC_ID_ADPCM_IMA_ISS = 69659,
    AV_CODEC_ID_ADPCM_G722 = 69660,
    AV_CODEC_ID_ADPCM_IMA_APC = 69661,
    AV_CODEC_ID_ADPCM_VIMA = 69662,
    AV_CODEC_ID_ADPCM_AFC = 71680,
    AV_CODEC_ID_ADPCM_IMA_OKI = 71681,
    AV_CODEC_ID_ADPCM_DTK = 71682,
    AV_CODEC_ID_ADPCM_IMA_RAD = 71683,
    AV_CODEC_ID_ADPCM_G726LE = 71684,
    AV_CODEC_ID_ADPCM_THP_LE = 71685,
    AV_CODEC_ID_ADPCM_PSX = 71686,
    AV_CODEC_ID_ADPCM_AICA = 71687,
    AV_CODEC_ID_ADPCM_IMA_DAT4 = 71688,
    AV_CODEC_ID_ADPCM_MTAF = 71689,
    AV_CODEC_ID_ADPCM_AGM = 71690,
    AV_CODEC_ID_ADPCM_ARGO = 71691,
    AV_CODEC_ID_ADPCM_IMA_SSI = 71692,
    AV_CODEC_ID_ADPCM_ZORK = 71693,
    AV_CODEC_ID_ADPCM_IMA_APM = 71694,
    AV_CODEC_ID_ADPCM_IMA_ALP = 71695,
    AV_CODEC_ID_ADPCM_IMA_MTF = 71696,
    AV_CODEC_ID_ADPCM_IMA_CUNNING = 71697,
    AV_CODEC_ID_ADPCM_IMA_MOFLEX = 71698,
    AV_CODEC_ID_AMR_NB = 73728,
    AV_CODEC_ID_AMR_WB = 73729,
    AV_CODEC_ID_RA_144 = 77824,
    AV_CODEC_ID_RA_288 = 77825,
    AV_CODEC_ID_ROQ_DPCM = 81920,
    AV_CODEC_ID_INTERPLAY_DPCM = 81921,
    AV_CODEC_ID_XAN_DPCM = 81922,
    AV_CODEC_ID_SOL_DPCM = 81923,
    AV_CODEC_ID_SDX2_DPCM = 83968,
    AV_CODEC_ID_GREMLIN_DPCM = 83969,
    AV_CODEC_ID_DERF_DPCM = 83970,
    AV_CODEC_ID_MP2 = 86016,
    AV_CODEC_ID_MP3 = 86017,
    AV_CODEC_ID_AAC = 86018,
    AV_CODEC_ID_AC3 = 86019,
    AV_CODEC_ID_DTS = 86020,
    AV_CODEC_ID_VORBIS = 86021,
    AV_CODEC_ID_DVAUDIO = 86022,
    AV_CODEC_ID_WMAV1 = 86023,
    AV_CODEC_ID_WMAV2 = 86024,
    AV_CODEC_ID_MACE3 = 86025,
    AV_CODEC_ID_MACE6 = 86026,
    AV_CODEC_ID_VMDAUDIO = 86027,
    AV_CODEC_ID_FLAC = 86028,
    AV_CODEC_ID_MP3ADU = 86029,
    AV_CODEC_ID_MP3ON4 = 86030,
    AV_CODEC_ID_SHORTEN = 86031,
    AV_CODEC_ID_ALAC = 86032,
    AV_CODEC_ID_WESTWOOD_SND1 = 86033,
    AV_CODEC_ID_GSM = 86034,
    AV_CODEC_ID_QDM2 = 86035,
    AV_CODEC_ID_COOK = 86036,
    AV_CODEC_ID_TRUESPEECH = 86037,
    AV_CODEC_ID_TTA = 86038,
    AV_CODEC_ID_SMACKAUDIO = 86039,
    AV_CODEC_ID_QCELP = 86040,
    AV_CODEC_ID_WAVPACK = 86041,
    AV_CODEC_ID_DSICINAUDIO = 86042,
    AV_CODEC_ID_IMC = 86043,
    AV_CODEC_ID_MUSEPACK7 = 86044,
    AV_CODEC_ID_MLP = 86045,
    AV_CODEC_ID_GSM_MS = 86046,
    AV_CODEC_ID_ATRAC3 = 86047,
    AV_CODEC_ID_APE = 86048,
    AV_CODEC_ID_NELLYMOSER = 86049,
    AV_CODEC_ID_MUSEPACK8 = 86050,
    AV_CODEC_ID_SPEEX = 86051,
    AV_CODEC_ID_WMAVOICE = 86052,
    AV_CODEC_ID_WMAPRO = 86053,
    AV_CODEC_ID_WMALOSSLESS = 86054,
    AV_CODEC_ID_ATRAC3P = 86055,
    AV_CODEC_ID_EAC3 = 86056,
    AV_CODEC_ID_SIPR = 86057,
    AV_CODEC_ID_MP1 = 86058,
    AV_CODEC_ID_TWINVQ = 86059,
    AV_CODEC_ID_TRUEHD = 86060,
    AV_CODEC_ID_MP4ALS = 86061,
    AV_CODEC_ID_ATRAC1 = 86062,
    AV_CODEC_ID_BINKAUDIO_RDFT = 86063,
    AV_CODEC_ID_BINKAUDIO_DCT = 86064,
    AV_CODEC_ID_AAC_LATM = 86065,
    AV_CODEC_ID_QDMC = 86066,
    AV_CODEC_ID_CELT = 86067,
    AV_CODEC_ID_G723_1 = 86068,
    AV_CODEC_ID_G729 = 86069,
    AV_CODEC_ID_8SVX_EXP = 86070,
    AV_CODEC_ID_8SVX_FIB = 86071,
    AV_CODEC_ID_BMV_AUDIO = 86072,
    AV_CODEC_ID_RALF = 86073,
    AV_CODEC_ID_IAC = 86074,
    AV_CODEC_ID_ILBC = 86075,
    AV_CODEC_ID_OPUS = 86076,
    AV_CODEC_ID_COMFORT_NOISE = 86077,
    AV_CODEC_ID_TAK = 86078,
    AV_CODEC_ID_METASOUND = 86079,
    AV_CODEC_ID_PAF_AUDIO = 86080,
    AV_CODEC_ID_ON2AVC = 86081,
    AV_CODEC_ID_DSS_SP = 86082,
    AV_CODEC_ID_CODEC2 = 86083,
    AV_CODEC_ID_FFWAVESYNTH = 88064,
    AV_CODEC_ID_SONIC = 88065,
    AV_CODEC_ID_SONIC_LS = 88066,
    AV_CODEC_ID_EVRC = 88067,
    AV_CODEC_ID_SMV = 88068,
    AV_CODEC_ID_DSD_LSBF = 88069,
    AV_CODEC_ID_DSD_MSBF = 88070,
    AV_CODEC_ID_DSD_LSBF_PLANAR = 88071,
    AV_CODEC_ID_DSD_MSBF_PLANAR = 88072,
    AV_CODEC_ID_4GV = 88073,
    AV_CODEC_ID_INTERPLAY_ACM = 88074,
    AV_CODEC_ID_XMA1 = 88075,
    AV_CODEC_ID_XMA2 = 88076,
    AV_CODEC_ID_DST = 88077,
    AV_CODEC_ID_ATRAC3AL = 88078,
    AV_CODEC_ID_ATRAC3PAL = 88079,
    AV_CODEC_ID_DOLBY_E = 88080,
    AV_CODEC_ID_APTX = 88081,
    AV_CODEC_ID_APTX_HD = 88082,
    AV_CODEC_ID_SBC = 88083,
    AV_CODEC_ID_ATRAC9 = 88084,
    AV_CODEC_ID_HCOM = 88085,
    AV_CODEC_ID_ACELP_KELVIN = 88086,
    AV_CODEC_ID_MPEGH_3D_AUDIO = 88087,
    AV_CODEC_ID_SIREN = 88088,
    AV_CODEC_ID_HCA = 88089,
    AV_CODEC_ID_FASTAUDIO = 88090,
    AV_CODEC_ID_FIRST_SUBTITLE = 94208,
    AV_CODEC_ID_DVD_SUBTITLE = 94208,
    AV_CODEC_ID_DVB_SUBTITLE = 94209,
    AV_CODEC_ID_TEXT = 94210,
    AV_CODEC_ID_XSUB = 94211,
    AV_CODEC_ID_SSA = 94212,
    AV_CODEC_ID_MOV_TEXT = 94213,
    AV_CODEC_ID_HDMV_PGS_SUBTITLE = 94214,
    AV_CODEC_ID_DVB_TELETEXT = 94215,
    AV_CODEC_ID_SRT = 94216,
    AV_CODEC_ID_MICRODVD = 96256,
    AV_CODEC_ID_EIA_608 = 96257,
    AV_CODEC_ID_JACOSUB = 96258,
    AV_CODEC_ID_SAMI = 96259,
    AV_CODEC_ID_REALTEXT = 96260,
    AV_CODEC_ID_STL = 96261,
    AV_CODEC_ID_SUBVIEWER1 = 96262,
    AV_CODEC_ID_SUBVIEWER = 96263,
    AV_CODEC_ID_SUBRIP = 96264,
    AV_CODEC_ID_WEBVTT = 96265,
    AV_CODEC_ID_MPL2 = 96266,
    AV_CODEC_ID_VPLAYER = 96267,
    AV_CODEC_ID_PJS = 96268,
    AV_CODEC_ID_ASS = 96269,
    AV_CODEC_ID_HDMV_TEXT_SUBTITLE = 96270,
    AV_CODEC_ID_TTML = 96271,
    AV_CODEC_ID_ARIB_CAPTION = 96272,
    AV_CODEC_ID_FIRST_UNKNOWN = 98304,
    AV_CODEC_ID_TTF = 98304,
    AV_CODEC_ID_SCTE_35 = 98305,
    AV_CODEC_ID_EPG = 98306,
    AV_CODEC_ID_BINTEXT = 100352,
    AV_CODEC_ID_XBIN = 100353,
    AV_CODEC_ID_IDF = 100354,
    AV_CODEC_ID_OTF = 100355,
    AV_CODEC_ID_SMPTE_KLV = 100356,
    AV_CODEC_ID_DVD_NAV = 100357,
    AV_CODEC_ID_TIMED_ID3 = 100358,
    AV_CODEC_ID_BIN_DATA = 100359,
    AV_CODEC_ID_PROBE = 102400,
    AV_CODEC_ID_MPEG2TS = 131072,
    AV_CODEC_ID_MPEG4SYSTEMS = 131073,
    AV_CODEC_ID_FFMETADATA = 135168,
    AV_CODEC_ID_WRAPPED_AVFRAME = 135169,
    _,
};
pub const AV_CODEC_ID_NONE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_NONE);
pub const AV_CODEC_ID_MPEG1VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEG1VIDEO);
pub const AV_CODEC_ID_MPEG2VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEG2VIDEO);
pub const AV_CODEC_ID_H261 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_H261);
pub const AV_CODEC_ID_H263 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_H263);
pub const AV_CODEC_ID_RV10 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RV10);
pub const AV_CODEC_ID_RV20 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RV20);
pub const AV_CODEC_ID_MJPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MJPEG);
pub const AV_CODEC_ID_MJPEGB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MJPEGB);
pub const AV_CODEC_ID_LJPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_LJPEG);
pub const AV_CODEC_ID_SP5X = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SP5X);
pub const AV_CODEC_ID_JPEGLS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_JPEGLS);
pub const AV_CODEC_ID_MPEG4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEG4);
pub const AV_CODEC_ID_RAWVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RAWVIDEO);
pub const AV_CODEC_ID_MSMPEG4V1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSMPEG4V1);
pub const AV_CODEC_ID_MSMPEG4V2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSMPEG4V2);
pub const AV_CODEC_ID_MSMPEG4V3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSMPEG4V3);
pub const AV_CODEC_ID_WMV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMV1);
pub const AV_CODEC_ID_WMV2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMV2);
pub const AV_CODEC_ID_H263P = @enumToInt(enum_AVCodecID.AV_CODEC_ID_H263P);
pub const AV_CODEC_ID_H263I = @enumToInt(enum_AVCodecID.AV_CODEC_ID_H263I);
pub const AV_CODEC_ID_FLV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FLV1);
pub const AV_CODEC_ID_SVQ1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SVQ1);
pub const AV_CODEC_ID_SVQ3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SVQ3);
pub const AV_CODEC_ID_DVVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVVIDEO);
pub const AV_CODEC_ID_HUFFYUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HUFFYUV);
pub const AV_CODEC_ID_CYUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CYUV);
pub const AV_CODEC_ID_H264 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_H264);
pub const AV_CODEC_ID_INDEO3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INDEO3);
pub const AV_CODEC_ID_VP3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP3);
pub const AV_CODEC_ID_THEORA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_THEORA);
pub const AV_CODEC_ID_ASV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ASV1);
pub const AV_CODEC_ID_ASV2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ASV2);
pub const AV_CODEC_ID_FFV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FFV1);
pub const AV_CODEC_ID_4XM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_4XM);
pub const AV_CODEC_ID_VCR1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VCR1);
pub const AV_CODEC_ID_CLJR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CLJR);
pub const AV_CODEC_ID_MDEC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MDEC);
pub const AV_CODEC_ID_ROQ = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ROQ);
pub const AV_CODEC_ID_INTERPLAY_VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INTERPLAY_VIDEO);
pub const AV_CODEC_ID_XAN_WC3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XAN_WC3);
pub const AV_CODEC_ID_XAN_WC4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XAN_WC4);
pub const AV_CODEC_ID_RPZA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RPZA);
pub const AV_CODEC_ID_CINEPAK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CINEPAK);
pub const AV_CODEC_ID_WS_VQA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WS_VQA);
pub const AV_CODEC_ID_MSRLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSRLE);
pub const AV_CODEC_ID_MSVIDEO1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSVIDEO1);
pub const AV_CODEC_ID_IDCIN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IDCIN);
pub const AV_CODEC_ID_8BPS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_8BPS);
pub const AV_CODEC_ID_SMC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMC);
pub const AV_CODEC_ID_FLIC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FLIC);
pub const AV_CODEC_ID_TRUEMOTION1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TRUEMOTION1);
pub const AV_CODEC_ID_VMDVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VMDVIDEO);
pub const AV_CODEC_ID_MSZH = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSZH);
pub const AV_CODEC_ID_ZLIB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ZLIB);
pub const AV_CODEC_ID_QTRLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QTRLE);
pub const AV_CODEC_ID_TSCC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TSCC);
pub const AV_CODEC_ID_ULTI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ULTI);
pub const AV_CODEC_ID_QDRAW = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QDRAW);
pub const AV_CODEC_ID_VIXL = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VIXL);
pub const AV_CODEC_ID_QPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QPEG);
pub const AV_CODEC_ID_PNG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PNG);
pub const AV_CODEC_ID_PPM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PPM);
pub const AV_CODEC_ID_PBM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PBM);
pub const AV_CODEC_ID_PGM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PGM);
pub const AV_CODEC_ID_PGMYUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PGMYUV);
pub const AV_CODEC_ID_PAM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PAM);
pub const AV_CODEC_ID_FFVHUFF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FFVHUFF);
pub const AV_CODEC_ID_RV30 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RV30);
pub const AV_CODEC_ID_RV40 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RV40);
pub const AV_CODEC_ID_VC1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VC1);
pub const AV_CODEC_ID_WMV3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMV3);
pub const AV_CODEC_ID_LOCO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_LOCO);
pub const AV_CODEC_ID_WNV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WNV1);
pub const AV_CODEC_ID_AASC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AASC);
pub const AV_CODEC_ID_INDEO2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INDEO2);
pub const AV_CODEC_ID_FRAPS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FRAPS);
pub const AV_CODEC_ID_TRUEMOTION2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TRUEMOTION2);
pub const AV_CODEC_ID_BMP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BMP);
pub const AV_CODEC_ID_CSCD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CSCD);
pub const AV_CODEC_ID_MMVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MMVIDEO);
pub const AV_CODEC_ID_ZMBV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ZMBV);
pub const AV_CODEC_ID_AVS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVS);
pub const AV_CODEC_ID_SMACKVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMACKVIDEO);
pub const AV_CODEC_ID_NUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_NUV);
pub const AV_CODEC_ID_KMVC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_KMVC);
pub const AV_CODEC_ID_FLASHSV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FLASHSV);
pub const AV_CODEC_ID_CAVS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CAVS);
pub const AV_CODEC_ID_JPEG2000 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_JPEG2000);
pub const AV_CODEC_ID_VMNC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VMNC);
pub const AV_CODEC_ID_VP5 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP5);
pub const AV_CODEC_ID_VP6 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP6);
pub const AV_CODEC_ID_VP6F = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP6F);
pub const AV_CODEC_ID_TARGA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TARGA);
pub const AV_CODEC_ID_DSICINVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSICINVIDEO);
pub const AV_CODEC_ID_TIERTEXSEQVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TIERTEXSEQVIDEO);
pub const AV_CODEC_ID_TIFF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TIFF);
pub const AV_CODEC_ID_GIF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_GIF);
pub const AV_CODEC_ID_DXA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DXA);
pub const AV_CODEC_ID_DNXHD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DNXHD);
pub const AV_CODEC_ID_THP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_THP);
pub const AV_CODEC_ID_SGI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SGI);
pub const AV_CODEC_ID_C93 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_C93);
pub const AV_CODEC_ID_BETHSOFTVID = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BETHSOFTVID);
pub const AV_CODEC_ID_PTX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PTX);
pub const AV_CODEC_ID_TXD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TXD);
pub const AV_CODEC_ID_VP6A = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP6A);
pub const AV_CODEC_ID_AMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AMV);
pub const AV_CODEC_ID_VB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VB);
pub const AV_CODEC_ID_PCX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCX);
pub const AV_CODEC_ID_SUNRAST = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SUNRAST);
pub const AV_CODEC_ID_INDEO4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INDEO4);
pub const AV_CODEC_ID_INDEO5 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INDEO5);
pub const AV_CODEC_ID_MIMIC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MIMIC);
pub const AV_CODEC_ID_RL2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RL2);
pub const AV_CODEC_ID_ESCAPE124 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ESCAPE124);
pub const AV_CODEC_ID_DIRAC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DIRAC);
pub const AV_CODEC_ID_BFI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BFI);
pub const AV_CODEC_ID_CMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CMV);
pub const AV_CODEC_ID_MOTIONPIXELS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MOTIONPIXELS);
pub const AV_CODEC_ID_TGV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TGV);
pub const AV_CODEC_ID_TGQ = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TGQ);
pub const AV_CODEC_ID_TQI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TQI);
pub const AV_CODEC_ID_AURA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AURA);
pub const AV_CODEC_ID_AURA2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AURA2);
pub const AV_CODEC_ID_V210X = @enumToInt(enum_AVCodecID.AV_CODEC_ID_V210X);
pub const AV_CODEC_ID_TMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TMV);
pub const AV_CODEC_ID_V210 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_V210);
pub const AV_CODEC_ID_DPX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DPX);
pub const AV_CODEC_ID_MAD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MAD);
pub const AV_CODEC_ID_FRWU = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FRWU);
pub const AV_CODEC_ID_FLASHSV2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FLASHSV2);
pub const AV_CODEC_ID_CDGRAPHICS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CDGRAPHICS);
pub const AV_CODEC_ID_R210 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_R210);
pub const AV_CODEC_ID_ANM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ANM);
pub const AV_CODEC_ID_BINKVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BINKVIDEO);
pub const AV_CODEC_ID_IFF_ILBM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IFF_ILBM);
pub const AV_CODEC_ID_KGV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_KGV1);
pub const AV_CODEC_ID_YOP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_YOP);
pub const AV_CODEC_ID_VP8 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP8);
pub const AV_CODEC_ID_PICTOR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PICTOR);
pub const AV_CODEC_ID_ANSI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ANSI);
pub const AV_CODEC_ID_A64_MULTI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_A64_MULTI);
pub const AV_CODEC_ID_A64_MULTI5 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_A64_MULTI5);
pub const AV_CODEC_ID_R10K = @enumToInt(enum_AVCodecID.AV_CODEC_ID_R10K);
pub const AV_CODEC_ID_MXPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MXPEG);
pub const AV_CODEC_ID_LAGARITH = @enumToInt(enum_AVCodecID.AV_CODEC_ID_LAGARITH);
pub const AV_CODEC_ID_PRORES = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PRORES);
pub const AV_CODEC_ID_JV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_JV);
pub const AV_CODEC_ID_DFA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DFA);
pub const AV_CODEC_ID_WMV3IMAGE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMV3IMAGE);
pub const AV_CODEC_ID_VC1IMAGE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VC1IMAGE);
pub const AV_CODEC_ID_UTVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_UTVIDEO);
pub const AV_CODEC_ID_BMV_VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BMV_VIDEO);
pub const AV_CODEC_ID_VBLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VBLE);
pub const AV_CODEC_ID_DXTORY = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DXTORY);
pub const AV_CODEC_ID_V410 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_V410);
pub const AV_CODEC_ID_XWD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XWD);
pub const AV_CODEC_ID_CDXL = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CDXL);
pub const AV_CODEC_ID_XBM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XBM);
pub const AV_CODEC_ID_ZEROCODEC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ZEROCODEC);
pub const AV_CODEC_ID_MSS1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSS1);
pub const AV_CODEC_ID_MSA1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSA1);
pub const AV_CODEC_ID_TSCC2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TSCC2);
pub const AV_CODEC_ID_MTS2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MTS2);
pub const AV_CODEC_ID_CLLC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CLLC);
pub const AV_CODEC_ID_MSS2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSS2);
pub const AV_CODEC_ID_VP9 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP9);
pub const AV_CODEC_ID_AIC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AIC);
pub const AV_CODEC_ID_ESCAPE130 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ESCAPE130);
pub const AV_CODEC_ID_G2M = @enumToInt(enum_AVCodecID.AV_CODEC_ID_G2M);
pub const AV_CODEC_ID_WEBP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WEBP);
pub const AV_CODEC_ID_HNM4_VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HNM4_VIDEO);
pub const AV_CODEC_ID_HEVC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HEVC);
pub const AV_CODEC_ID_FIC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FIC);
pub const AV_CODEC_ID_ALIAS_PIX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ALIAS_PIX);
pub const AV_CODEC_ID_BRENDER_PIX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BRENDER_PIX);
pub const AV_CODEC_ID_PAF_VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PAF_VIDEO);
pub const AV_CODEC_ID_EXR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_EXR);
pub const AV_CODEC_ID_VP7 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP7);
pub const AV_CODEC_ID_SANM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SANM);
pub const AV_CODEC_ID_SGIRLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SGIRLE);
pub const AV_CODEC_ID_MVC1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MVC1);
pub const AV_CODEC_ID_MVC2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MVC2);
pub const AV_CODEC_ID_HQX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HQX);
pub const AV_CODEC_ID_TDSC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TDSC);
pub const AV_CODEC_ID_HQ_HQA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HQ_HQA);
pub const AV_CODEC_ID_HAP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HAP);
pub const AV_CODEC_ID_DDS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DDS);
pub const AV_CODEC_ID_DXV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DXV);
pub const AV_CODEC_ID_SCREENPRESSO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SCREENPRESSO);
pub const AV_CODEC_ID_RSCC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RSCC);
pub const AV_CODEC_ID_AVS2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVS2);
pub const AV_CODEC_ID_PGX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PGX);
pub const AV_CODEC_ID_AVS3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVS3);
pub const AV_CODEC_ID_MSP2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSP2);
pub const AV_CODEC_ID_VVC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VVC);
pub const AV_CODEC_ID_Y41P = @enumToInt(enum_AVCodecID.AV_CODEC_ID_Y41P);
pub const AV_CODEC_ID_AVRP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVRP);
pub const AV_CODEC_ID_012V = @enumToInt(enum_AVCodecID.AV_CODEC_ID_012V);
pub const AV_CODEC_ID_AVUI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVUI);
pub const AV_CODEC_ID_AYUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AYUV);
pub const AV_CODEC_ID_TARGA_Y216 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TARGA_Y216);
pub const AV_CODEC_ID_V308 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_V308);
pub const AV_CODEC_ID_V408 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_V408);
pub const AV_CODEC_ID_YUV4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_YUV4);
pub const AV_CODEC_ID_AVRN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AVRN);
pub const AV_CODEC_ID_CPIA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CPIA);
pub const AV_CODEC_ID_XFACE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XFACE);
pub const AV_CODEC_ID_SNOW = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SNOW);
pub const AV_CODEC_ID_SMVJPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMVJPEG);
pub const AV_CODEC_ID_APNG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_APNG);
pub const AV_CODEC_ID_DAALA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DAALA);
pub const AV_CODEC_ID_CFHD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CFHD);
pub const AV_CODEC_ID_TRUEMOTION2RT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TRUEMOTION2RT);
pub const AV_CODEC_ID_M101 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_M101);
pub const AV_CODEC_ID_MAGICYUV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MAGICYUV);
pub const AV_CODEC_ID_SHEERVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SHEERVIDEO);
pub const AV_CODEC_ID_YLC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_YLC);
pub const AV_CODEC_ID_PSD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PSD);
pub const AV_CODEC_ID_PIXLET = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PIXLET);
pub const AV_CODEC_ID_SPEEDHQ = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SPEEDHQ);
pub const AV_CODEC_ID_FMVC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FMVC);
pub const AV_CODEC_ID_SCPR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SCPR);
pub const AV_CODEC_ID_CLEARVIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CLEARVIDEO);
pub const AV_CODEC_ID_XPM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XPM);
pub const AV_CODEC_ID_AV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AV1);
pub const AV_CODEC_ID_BITPACKED = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BITPACKED);
pub const AV_CODEC_ID_MSCC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MSCC);
pub const AV_CODEC_ID_SRGC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SRGC);
pub const AV_CODEC_ID_SVG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SVG);
pub const AV_CODEC_ID_GDV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_GDV);
pub const AV_CODEC_ID_FITS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FITS);
pub const AV_CODEC_ID_IMM4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IMM4);
pub const AV_CODEC_ID_PROSUMER = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PROSUMER);
pub const AV_CODEC_ID_MWSC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MWSC);
pub const AV_CODEC_ID_WCMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WCMV);
pub const AV_CODEC_ID_RASC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RASC);
pub const AV_CODEC_ID_HYMT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HYMT);
pub const AV_CODEC_ID_ARBC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ARBC);
pub const AV_CODEC_ID_AGM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AGM);
pub const AV_CODEC_ID_LSCR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_LSCR);
pub const AV_CODEC_ID_VP4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VP4);
pub const AV_CODEC_ID_IMM5 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IMM5);
pub const AV_CODEC_ID_MVDV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MVDV);
pub const AV_CODEC_ID_MVHA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MVHA);
pub const AV_CODEC_ID_CDTOONS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CDTOONS);
pub const AV_CODEC_ID_MV30 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MV30);
pub const AV_CODEC_ID_NOTCHLC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_NOTCHLC);
pub const AV_CODEC_ID_PFM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PFM);
pub const AV_CODEC_ID_MOBICLIP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MOBICLIP);
pub const AV_CODEC_ID_PHOTOCD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PHOTOCD);
pub const AV_CODEC_ID_IPU = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IPU);
pub const AV_CODEC_ID_ARGO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ARGO);
pub const AV_CODEC_ID_CRI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CRI);
pub const AV_CODEC_ID_SIMBIOSIS_IMX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SIMBIOSIS_IMX);
pub const AV_CODEC_ID_SGA_VIDEO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SGA_VIDEO);
pub const AV_CODEC_ID_FIRST_AUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FIRST_AUDIO);
pub const AV_CODEC_ID_PCM_S16LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S16LE);
pub const AV_CODEC_ID_PCM_S16BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S16BE);
pub const AV_CODEC_ID_PCM_U16LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U16LE);
pub const AV_CODEC_ID_PCM_U16BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U16BE);
pub const AV_CODEC_ID_PCM_S8 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S8);
pub const AV_CODEC_ID_PCM_U8 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U8);
pub const AV_CODEC_ID_PCM_MULAW = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_MULAW);
pub const AV_CODEC_ID_PCM_ALAW = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_ALAW);
pub const AV_CODEC_ID_PCM_S32LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S32LE);
pub const AV_CODEC_ID_PCM_S32BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S32BE);
pub const AV_CODEC_ID_PCM_U32LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U32LE);
pub const AV_CODEC_ID_PCM_U32BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U32BE);
pub const AV_CODEC_ID_PCM_S24LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S24LE);
pub const AV_CODEC_ID_PCM_S24BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S24BE);
pub const AV_CODEC_ID_PCM_U24LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U24LE);
pub const AV_CODEC_ID_PCM_U24BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_U24BE);
pub const AV_CODEC_ID_PCM_S24DAUD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S24DAUD);
pub const AV_CODEC_ID_PCM_ZORK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_ZORK);
pub const AV_CODEC_ID_PCM_S16LE_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S16LE_PLANAR);
pub const AV_CODEC_ID_PCM_DVD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_DVD);
pub const AV_CODEC_ID_PCM_F32BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F32BE);
pub const AV_CODEC_ID_PCM_F32LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F32LE);
pub const AV_CODEC_ID_PCM_F64BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F64BE);
pub const AV_CODEC_ID_PCM_F64LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F64LE);
pub const AV_CODEC_ID_PCM_BLURAY = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_BLURAY);
pub const AV_CODEC_ID_PCM_LXF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_LXF);
pub const AV_CODEC_ID_S302M = @enumToInt(enum_AVCodecID.AV_CODEC_ID_S302M);
pub const AV_CODEC_ID_PCM_S8_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S8_PLANAR);
pub const AV_CODEC_ID_PCM_S24LE_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S24LE_PLANAR);
pub const AV_CODEC_ID_PCM_S32LE_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S32LE_PLANAR);
pub const AV_CODEC_ID_PCM_S16BE_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S16BE_PLANAR);
pub const AV_CODEC_ID_PCM_S64LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S64LE);
pub const AV_CODEC_ID_PCM_S64BE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_S64BE);
pub const AV_CODEC_ID_PCM_F16LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F16LE);
pub const AV_CODEC_ID_PCM_F24LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_F24LE);
pub const AV_CODEC_ID_PCM_VIDC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_VIDC);
pub const AV_CODEC_ID_PCM_SGA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PCM_SGA);
pub const AV_CODEC_ID_ADPCM_IMA_QT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_QT);
pub const AV_CODEC_ID_ADPCM_IMA_WAV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_WAV);
pub const AV_CODEC_ID_ADPCM_IMA_DK3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_DK3);
pub const AV_CODEC_ID_ADPCM_IMA_DK4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_DK4);
pub const AV_CODEC_ID_ADPCM_IMA_WS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_WS);
pub const AV_CODEC_ID_ADPCM_IMA_SMJPEG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_SMJPEG);
pub const AV_CODEC_ID_ADPCM_MS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_MS);
pub const AV_CODEC_ID_ADPCM_4XM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_4XM);
pub const AV_CODEC_ID_ADPCM_XA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_XA);
pub const AV_CODEC_ID_ADPCM_ADX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_ADX);
pub const AV_CODEC_ID_ADPCM_EA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA);
pub const AV_CODEC_ID_ADPCM_G726 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_G726);
pub const AV_CODEC_ID_ADPCM_CT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_CT);
pub const AV_CODEC_ID_ADPCM_SWF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_SWF);
pub const AV_CODEC_ID_ADPCM_YAMAHA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_YAMAHA);
pub const AV_CODEC_ID_ADPCM_SBPRO_4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_SBPRO_4);
pub const AV_CODEC_ID_ADPCM_SBPRO_3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_SBPRO_3);
pub const AV_CODEC_ID_ADPCM_SBPRO_2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_SBPRO_2);
pub const AV_CODEC_ID_ADPCM_THP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_THP);
pub const AV_CODEC_ID_ADPCM_IMA_AMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_AMV);
pub const AV_CODEC_ID_ADPCM_EA_R1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA_R1);
pub const AV_CODEC_ID_ADPCM_EA_R3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA_R3);
pub const AV_CODEC_ID_ADPCM_EA_R2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA_R2);
pub const AV_CODEC_ID_ADPCM_IMA_EA_SEAD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_EA_SEAD);
pub const AV_CODEC_ID_ADPCM_IMA_EA_EACS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_EA_EACS);
pub const AV_CODEC_ID_ADPCM_EA_XAS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA_XAS);
pub const AV_CODEC_ID_ADPCM_EA_MAXIS_XA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_EA_MAXIS_XA);
pub const AV_CODEC_ID_ADPCM_IMA_ISS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_ISS);
pub const AV_CODEC_ID_ADPCM_G722 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_G722);
pub const AV_CODEC_ID_ADPCM_IMA_APC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_APC);
pub const AV_CODEC_ID_ADPCM_VIMA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_VIMA);
pub const AV_CODEC_ID_ADPCM_AFC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_AFC);
pub const AV_CODEC_ID_ADPCM_IMA_OKI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_OKI);
pub const AV_CODEC_ID_ADPCM_DTK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_DTK);
pub const AV_CODEC_ID_ADPCM_IMA_RAD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_RAD);
pub const AV_CODEC_ID_ADPCM_G726LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_G726LE);
pub const AV_CODEC_ID_ADPCM_THP_LE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_THP_LE);
pub const AV_CODEC_ID_ADPCM_PSX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_PSX);
pub const AV_CODEC_ID_ADPCM_AICA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_AICA);
pub const AV_CODEC_ID_ADPCM_IMA_DAT4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_DAT4);
pub const AV_CODEC_ID_ADPCM_MTAF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_MTAF);
pub const AV_CODEC_ID_ADPCM_AGM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_AGM);
pub const AV_CODEC_ID_ADPCM_ARGO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_ARGO);
pub const AV_CODEC_ID_ADPCM_IMA_SSI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_SSI);
pub const AV_CODEC_ID_ADPCM_ZORK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_ZORK);
pub const AV_CODEC_ID_ADPCM_IMA_APM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_APM);
pub const AV_CODEC_ID_ADPCM_IMA_ALP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_ALP);
pub const AV_CODEC_ID_ADPCM_IMA_MTF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_MTF);
pub const AV_CODEC_ID_ADPCM_IMA_CUNNING = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_CUNNING);
pub const AV_CODEC_ID_ADPCM_IMA_MOFLEX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ADPCM_IMA_MOFLEX);
pub const AV_CODEC_ID_AMR_NB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AMR_NB);
pub const AV_CODEC_ID_AMR_WB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AMR_WB);
pub const AV_CODEC_ID_RA_144 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RA_144);
pub const AV_CODEC_ID_RA_288 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RA_288);
pub const AV_CODEC_ID_ROQ_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ROQ_DPCM);
pub const AV_CODEC_ID_INTERPLAY_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INTERPLAY_DPCM);
pub const AV_CODEC_ID_XAN_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XAN_DPCM);
pub const AV_CODEC_ID_SOL_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SOL_DPCM);
pub const AV_CODEC_ID_SDX2_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SDX2_DPCM);
pub const AV_CODEC_ID_GREMLIN_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_GREMLIN_DPCM);
pub const AV_CODEC_ID_DERF_DPCM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DERF_DPCM);
pub const AV_CODEC_ID_MP2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP2);
pub const AV_CODEC_ID_MP3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP3);
pub const AV_CODEC_ID_AAC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AAC);
pub const AV_CODEC_ID_AC3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AC3);
pub const AV_CODEC_ID_DTS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DTS);
pub const AV_CODEC_ID_VORBIS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VORBIS);
pub const AV_CODEC_ID_DVAUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVAUDIO);
pub const AV_CODEC_ID_WMAV1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMAV1);
pub const AV_CODEC_ID_WMAV2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMAV2);
pub const AV_CODEC_ID_MACE3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MACE3);
pub const AV_CODEC_ID_MACE6 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MACE6);
pub const AV_CODEC_ID_VMDAUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VMDAUDIO);
pub const AV_CODEC_ID_FLAC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FLAC);
pub const AV_CODEC_ID_MP3ADU = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP3ADU);
pub const AV_CODEC_ID_MP3ON4 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP3ON4);
pub const AV_CODEC_ID_SHORTEN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SHORTEN);
pub const AV_CODEC_ID_ALAC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ALAC);
pub const AV_CODEC_ID_WESTWOOD_SND1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WESTWOOD_SND1);
pub const AV_CODEC_ID_GSM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_GSM);
pub const AV_CODEC_ID_QDM2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QDM2);
pub const AV_CODEC_ID_COOK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_COOK);
pub const AV_CODEC_ID_TRUESPEECH = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TRUESPEECH);
pub const AV_CODEC_ID_TTA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TTA);
pub const AV_CODEC_ID_SMACKAUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMACKAUDIO);
pub const AV_CODEC_ID_QCELP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QCELP);
pub const AV_CODEC_ID_WAVPACK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WAVPACK);
pub const AV_CODEC_ID_DSICINAUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSICINAUDIO);
pub const AV_CODEC_ID_IMC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IMC);
pub const AV_CODEC_ID_MUSEPACK7 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MUSEPACK7);
pub const AV_CODEC_ID_MLP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MLP);
pub const AV_CODEC_ID_GSM_MS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_GSM_MS);
pub const AV_CODEC_ID_ATRAC3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC3);
pub const AV_CODEC_ID_APE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_APE);
pub const AV_CODEC_ID_NELLYMOSER = @enumToInt(enum_AVCodecID.AV_CODEC_ID_NELLYMOSER);
pub const AV_CODEC_ID_MUSEPACK8 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MUSEPACK8);
pub const AV_CODEC_ID_SPEEX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SPEEX);
pub const AV_CODEC_ID_WMAVOICE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMAVOICE);
pub const AV_CODEC_ID_WMAPRO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMAPRO);
pub const AV_CODEC_ID_WMALOSSLESS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WMALOSSLESS);
pub const AV_CODEC_ID_ATRAC3P = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC3P);
pub const AV_CODEC_ID_EAC3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_EAC3);
pub const AV_CODEC_ID_SIPR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SIPR);
pub const AV_CODEC_ID_MP1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP1);
pub const AV_CODEC_ID_TWINVQ = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TWINVQ);
pub const AV_CODEC_ID_TRUEHD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TRUEHD);
pub const AV_CODEC_ID_MP4ALS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MP4ALS);
pub const AV_CODEC_ID_ATRAC1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC1);
pub const AV_CODEC_ID_BINKAUDIO_RDFT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BINKAUDIO_RDFT);
pub const AV_CODEC_ID_BINKAUDIO_DCT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BINKAUDIO_DCT);
pub const AV_CODEC_ID_AAC_LATM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_AAC_LATM);
pub const AV_CODEC_ID_QDMC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_QDMC);
pub const AV_CODEC_ID_CELT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CELT);
pub const AV_CODEC_ID_G723_1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_G723_1);
pub const AV_CODEC_ID_G729 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_G729);
pub const AV_CODEC_ID_8SVX_EXP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_8SVX_EXP);
pub const AV_CODEC_ID_8SVX_FIB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_8SVX_FIB);
pub const AV_CODEC_ID_BMV_AUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BMV_AUDIO);
pub const AV_CODEC_ID_RALF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_RALF);
pub const AV_CODEC_ID_IAC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IAC);
pub const AV_CODEC_ID_ILBC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ILBC);
pub const AV_CODEC_ID_OPUS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_OPUS);
pub const AV_CODEC_ID_COMFORT_NOISE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_COMFORT_NOISE);
pub const AV_CODEC_ID_TAK = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TAK);
pub const AV_CODEC_ID_METASOUND = @enumToInt(enum_AVCodecID.AV_CODEC_ID_METASOUND);
pub const AV_CODEC_ID_PAF_AUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PAF_AUDIO);
pub const AV_CODEC_ID_ON2AVC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ON2AVC);
pub const AV_CODEC_ID_DSS_SP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSS_SP);
pub const AV_CODEC_ID_CODEC2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_CODEC2);
pub const AV_CODEC_ID_FFWAVESYNTH = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FFWAVESYNTH);
pub const AV_CODEC_ID_SONIC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SONIC);
pub const AV_CODEC_ID_SONIC_LS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SONIC_LS);
pub const AV_CODEC_ID_EVRC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_EVRC);
pub const AV_CODEC_ID_SMV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMV);
pub const AV_CODEC_ID_DSD_LSBF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSD_LSBF);
pub const AV_CODEC_ID_DSD_MSBF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSD_MSBF);
pub const AV_CODEC_ID_DSD_LSBF_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSD_LSBF_PLANAR);
pub const AV_CODEC_ID_DSD_MSBF_PLANAR = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DSD_MSBF_PLANAR);
pub const AV_CODEC_ID_4GV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_4GV);
pub const AV_CODEC_ID_INTERPLAY_ACM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_INTERPLAY_ACM);
pub const AV_CODEC_ID_XMA1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XMA1);
pub const AV_CODEC_ID_XMA2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XMA2);
pub const AV_CODEC_ID_DST = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DST);
pub const AV_CODEC_ID_ATRAC3AL = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC3AL);
pub const AV_CODEC_ID_ATRAC3PAL = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC3PAL);
pub const AV_CODEC_ID_DOLBY_E = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DOLBY_E);
pub const AV_CODEC_ID_APTX = @enumToInt(enum_AVCodecID.AV_CODEC_ID_APTX);
pub const AV_CODEC_ID_APTX_HD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_APTX_HD);
pub const AV_CODEC_ID_SBC = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SBC);
pub const AV_CODEC_ID_ATRAC9 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ATRAC9);
pub const AV_CODEC_ID_HCOM = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HCOM);
pub const AV_CODEC_ID_ACELP_KELVIN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ACELP_KELVIN);
pub const AV_CODEC_ID_MPEGH_3D_AUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEGH_3D_AUDIO);
pub const AV_CODEC_ID_SIREN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SIREN);
pub const AV_CODEC_ID_HCA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HCA);
pub const AV_CODEC_ID_FASTAUDIO = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FASTAUDIO);
pub const AV_CODEC_ID_FIRST_SUBTITLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FIRST_SUBTITLE);
pub const AV_CODEC_ID_DVD_SUBTITLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVD_SUBTITLE);
pub const AV_CODEC_ID_DVB_SUBTITLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVB_SUBTITLE);
pub const AV_CODEC_ID_TEXT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TEXT);
pub const AV_CODEC_ID_XSUB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XSUB);
pub const AV_CODEC_ID_SSA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SSA);
pub const AV_CODEC_ID_MOV_TEXT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MOV_TEXT);
pub const AV_CODEC_ID_HDMV_PGS_SUBTITLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HDMV_PGS_SUBTITLE);
pub const AV_CODEC_ID_DVB_TELETEXT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVB_TELETEXT);
pub const AV_CODEC_ID_SRT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SRT);
pub const AV_CODEC_ID_MICRODVD = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MICRODVD);
pub const AV_CODEC_ID_EIA_608 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_EIA_608);
pub const AV_CODEC_ID_JACOSUB = @enumToInt(enum_AVCodecID.AV_CODEC_ID_JACOSUB);
pub const AV_CODEC_ID_SAMI = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SAMI);
pub const AV_CODEC_ID_REALTEXT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_REALTEXT);
pub const AV_CODEC_ID_STL = @enumToInt(enum_AVCodecID.AV_CODEC_ID_STL);
pub const AV_CODEC_ID_SUBVIEWER1 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SUBVIEWER1);
pub const AV_CODEC_ID_SUBVIEWER = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SUBVIEWER);
pub const AV_CODEC_ID_SUBRIP = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SUBRIP);
pub const AV_CODEC_ID_WEBVTT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WEBVTT);
pub const AV_CODEC_ID_MPL2 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPL2);
pub const AV_CODEC_ID_VPLAYER = @enumToInt(enum_AVCodecID.AV_CODEC_ID_VPLAYER);
pub const AV_CODEC_ID_PJS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PJS);
pub const AV_CODEC_ID_ASS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ASS);
pub const AV_CODEC_ID_HDMV_TEXT_SUBTITLE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_HDMV_TEXT_SUBTITLE);
pub const AV_CODEC_ID_TTML = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TTML);
pub const AV_CODEC_ID_ARIB_CAPTION = @enumToInt(enum_AVCodecID.AV_CODEC_ID_ARIB_CAPTION);
pub const AV_CODEC_ID_FIRST_UNKNOWN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FIRST_UNKNOWN);
pub const AV_CODEC_ID_TTF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TTF);
pub const AV_CODEC_ID_SCTE_35 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SCTE_35);
pub const AV_CODEC_ID_EPG = @enumToInt(enum_AVCodecID.AV_CODEC_ID_EPG);
pub const AV_CODEC_ID_BINTEXT = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BINTEXT);
pub const AV_CODEC_ID_XBIN = @enumToInt(enum_AVCodecID.AV_CODEC_ID_XBIN);
pub const AV_CODEC_ID_IDF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_IDF);
pub const AV_CODEC_ID_OTF = @enumToInt(enum_AVCodecID.AV_CODEC_ID_OTF);
pub const AV_CODEC_ID_SMPTE_KLV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_SMPTE_KLV);
pub const AV_CODEC_ID_DVD_NAV = @enumToInt(enum_AVCodecID.AV_CODEC_ID_DVD_NAV);
pub const AV_CODEC_ID_TIMED_ID3 = @enumToInt(enum_AVCodecID.AV_CODEC_ID_TIMED_ID3);
pub const AV_CODEC_ID_BIN_DATA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_BIN_DATA);
pub const AV_CODEC_ID_PROBE = @enumToInt(enum_AVCodecID.AV_CODEC_ID_PROBE);
pub const AV_CODEC_ID_MPEG2TS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEG2TS);
pub const AV_CODEC_ID_MPEG4SYSTEMS = @enumToInt(enum_AVCodecID.AV_CODEC_ID_MPEG4SYSTEMS);
pub const AV_CODEC_ID_FFMETADATA = @enumToInt(enum_AVCodecID.AV_CODEC_ID_FFMETADATA);
pub const AV_CODEC_ID_WRAPPED_AVFRAME = @enumToInt(enum_AVCodecID.AV_CODEC_ID_WRAPPED_AVFRAME);
pub extern fn avcodec_get_type(codec_id: enum_AVCodecID) enum_AVMediaType;
pub extern fn avcodec_get_name(id: enum_AVCodecID) [*c]const u8;
pub const enum_AVFieldOrder = extern enum(c_int) {
    AV_FIELD_UNKNOWN,
    AV_FIELD_PROGRESSIVE,
    AV_FIELD_TT,
    AV_FIELD_BB,
    AV_FIELD_TB,
    AV_FIELD_BT,
    _,
};
pub const AV_FIELD_UNKNOWN = @enumToInt(enum_AVFieldOrder.AV_FIELD_UNKNOWN);
pub const AV_FIELD_PROGRESSIVE = @enumToInt(enum_AVFieldOrder.AV_FIELD_PROGRESSIVE);
pub const AV_FIELD_TT = @enumToInt(enum_AVFieldOrder.AV_FIELD_TT);
pub const AV_FIELD_BB = @enumToInt(enum_AVFieldOrder.AV_FIELD_BB);
pub const AV_FIELD_TB = @enumToInt(enum_AVFieldOrder.AV_FIELD_TB);
pub const AV_FIELD_BT = @enumToInt(enum_AVFieldOrder.AV_FIELD_BT);
pub const struct_AVCodecParameters = extern struct {
    codec_type: enum_AVMediaType,
    codec_id: enum_AVCodecID,
    codec_tag: u32,
    extradata: [*c]u8,
    extradata_size: c_int,
    format: c_int,
    bit_rate: i64,
    bits_per_coded_sample: c_int,
    bits_per_raw_sample: c_int,
    profile: c_int,
    level: c_int,
    width: c_int,
    height: c_int,
    sample_aspect_ratio: AVRational,
    field_order: enum_AVFieldOrder,
    color_range: enum_AVColorRange,
    color_primaries: enum_AVColorPrimaries,
    color_trc: enum_AVColorTransferCharacteristic,
    color_space: enum_AVColorSpace,
    chroma_location: enum_AVChromaLocation,
    video_delay: c_int,
    channel_layout: u64,
    channels: c_int,
    sample_rate: c_int,
    block_align: c_int,
    frame_size: c_int,
    initial_padding: c_int,
    trailing_padding: c_int,
    seek_preroll: c_int,
};
pub const AVCodecParameters = struct_AVCodecParameters;
pub extern fn avcodec_parameters_alloc() [*c]AVCodecParameters;
pub extern fn avcodec_parameters_free(par: [*c][*c]AVCodecParameters) void;
pub extern fn avcodec_parameters_copy(dst: [*c]AVCodecParameters, src: [*c]const AVCodecParameters) c_int;
pub const enum_AVPacketSideDataType = extern enum(c_int) {
    AV_PKT_DATA_PALETTE,
    AV_PKT_DATA_NEW_EXTRADATA,
    AV_PKT_DATA_PARAM_CHANGE,
    AV_PKT_DATA_H263_MB_INFO,
    AV_PKT_DATA_REPLAYGAIN,
    AV_PKT_DATA_DISPLAYMATRIX,
    AV_PKT_DATA_STEREO3D,
    AV_PKT_DATA_AUDIO_SERVICE_TYPE,
    AV_PKT_DATA_QUALITY_STATS,
    AV_PKT_DATA_FALLBACK_TRACK,
    AV_PKT_DATA_CPB_PROPERTIES,
    AV_PKT_DATA_SKIP_SAMPLES,
    AV_PKT_DATA_JP_DUALMONO,
    AV_PKT_DATA_STRINGS_METADATA,
    AV_PKT_DATA_SUBTITLE_POSITION,
    AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL,
    AV_PKT_DATA_WEBVTT_IDENTIFIER,
    AV_PKT_DATA_WEBVTT_SETTINGS,
    AV_PKT_DATA_METADATA_UPDATE,
    AV_PKT_DATA_MPEGTS_STREAM_ID,
    AV_PKT_DATA_MASTERING_DISPLAY_METADATA,
    AV_PKT_DATA_SPHERICAL,
    AV_PKT_DATA_CONTENT_LIGHT_LEVEL,
    AV_PKT_DATA_A53_CC,
    AV_PKT_DATA_ENCRYPTION_INIT_INFO,
    AV_PKT_DATA_ENCRYPTION_INFO,
    AV_PKT_DATA_AFD,
    AV_PKT_DATA_PRFT,
    AV_PKT_DATA_ICC_PROFILE,
    AV_PKT_DATA_DOVI_CONF,
    AV_PKT_DATA_S12M_TIMECODE,
    AV_PKT_DATA_NB,
    _,
};
pub const AV_PKT_DATA_PALETTE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_PALETTE);
pub const AV_PKT_DATA_NEW_EXTRADATA = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_NEW_EXTRADATA);
pub const AV_PKT_DATA_PARAM_CHANGE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_PARAM_CHANGE);
pub const AV_PKT_DATA_H263_MB_INFO = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_H263_MB_INFO);
pub const AV_PKT_DATA_REPLAYGAIN = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_REPLAYGAIN);
pub const AV_PKT_DATA_DISPLAYMATRIX = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_DISPLAYMATRIX);
pub const AV_PKT_DATA_STEREO3D = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_STEREO3D);
pub const AV_PKT_DATA_AUDIO_SERVICE_TYPE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_AUDIO_SERVICE_TYPE);
pub const AV_PKT_DATA_QUALITY_STATS = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_QUALITY_STATS);
pub const AV_PKT_DATA_FALLBACK_TRACK = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_FALLBACK_TRACK);
pub const AV_PKT_DATA_CPB_PROPERTIES = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_CPB_PROPERTIES);
pub const AV_PKT_DATA_SKIP_SAMPLES = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_SKIP_SAMPLES);
pub const AV_PKT_DATA_JP_DUALMONO = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_JP_DUALMONO);
pub const AV_PKT_DATA_STRINGS_METADATA = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_STRINGS_METADATA);
pub const AV_PKT_DATA_SUBTITLE_POSITION = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_SUBTITLE_POSITION);
pub const AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL);
pub const AV_PKT_DATA_WEBVTT_IDENTIFIER = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_WEBVTT_IDENTIFIER);
pub const AV_PKT_DATA_WEBVTT_SETTINGS = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_WEBVTT_SETTINGS);
pub const AV_PKT_DATA_METADATA_UPDATE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_METADATA_UPDATE);
pub const AV_PKT_DATA_MPEGTS_STREAM_ID = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_MPEGTS_STREAM_ID);
pub const AV_PKT_DATA_MASTERING_DISPLAY_METADATA = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_MASTERING_DISPLAY_METADATA);
pub const AV_PKT_DATA_SPHERICAL = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_SPHERICAL);
pub const AV_PKT_DATA_CONTENT_LIGHT_LEVEL = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_CONTENT_LIGHT_LEVEL);
pub const AV_PKT_DATA_A53_CC = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_A53_CC);
pub const AV_PKT_DATA_ENCRYPTION_INIT_INFO = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_ENCRYPTION_INIT_INFO);
pub const AV_PKT_DATA_ENCRYPTION_INFO = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_ENCRYPTION_INFO);
pub const AV_PKT_DATA_AFD = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_AFD);
pub const AV_PKT_DATA_PRFT = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_PRFT);
pub const AV_PKT_DATA_ICC_PROFILE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_ICC_PROFILE);
pub const AV_PKT_DATA_DOVI_CONF = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_DOVI_CONF);
pub const AV_PKT_DATA_S12M_TIMECODE = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_S12M_TIMECODE);
pub const AV_PKT_DATA_NB = @enumToInt(enum_AVPacketSideDataType.AV_PKT_DATA_NB);
pub const struct_AVPacketSideData = extern struct {
    data: [*c]u8,
    size: c_int,
    type: enum_AVPacketSideDataType,
};
pub const AVPacketSideData = struct_AVPacketSideData;
pub const struct_AVPacket = extern struct {
    buf: [*c]AVBufferRef,
    pts: i64,
    dts: i64,
    data: [*c]u8,
    size: c_int,
    stream_index: c_int,
    flags: c_int,
    side_data: [*c]AVPacketSideData,
    side_data_elems: c_int,
    duration: i64,
    pos: i64,
    convergence_duration: i64,
};
pub const AVPacket = struct_AVPacket;
pub const struct_AVPacketList = extern struct {
    pkt: AVPacket,
    next: [*c]struct_AVPacketList,
};
pub const AVPacketList = struct_AVPacketList;
pub const enum_AVSideDataParamChangeFlags = extern enum(c_int) {
    AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1,
    AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2,
    AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4,
    AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8,
    _,
};
pub const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = @enumToInt(enum_AVSideDataParamChangeFlags.AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT);
pub const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = @enumToInt(enum_AVSideDataParamChangeFlags.AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT);
pub const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = @enumToInt(enum_AVSideDataParamChangeFlags.AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE);
pub const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = @enumToInt(enum_AVSideDataParamChangeFlags.AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS);
pub extern fn av_packet_alloc() [*c]AVPacket;
pub extern fn av_packet_clone(src: [*c]const AVPacket) [*c]AVPacket;
pub extern fn av_packet_free(pkt: [*c][*c]AVPacket) void;
pub extern fn av_init_packet(pkt: [*c]AVPacket) void;
pub extern fn av_new_packet(pkt: [*c]AVPacket, size: c_int) c_int;
pub extern fn av_shrink_packet(pkt: [*c]AVPacket, size: c_int) void;
pub extern fn av_grow_packet(pkt: [*c]AVPacket, grow_by: c_int) c_int;
pub extern fn av_packet_from_data(pkt: [*c]AVPacket, data: [*c]u8, size: c_int) c_int;
pub extern fn av_dup_packet(pkt: [*c]AVPacket) c_int;
pub extern fn av_copy_packet(dst: [*c]AVPacket, src: [*c]const AVPacket) c_int;
pub extern fn av_copy_packet_side_data(dst: [*c]AVPacket, src: [*c]const AVPacket) c_int;
pub extern fn av_free_packet(pkt: [*c]AVPacket) void;
pub extern fn av_packet_new_side_data(pkt: [*c]AVPacket, type: enum_AVPacketSideDataType, size: c_int) [*c]u8;
pub extern fn av_packet_add_side_data(pkt: [*c]AVPacket, type: enum_AVPacketSideDataType, data: [*c]u8, size: usize) c_int;
pub extern fn av_packet_shrink_side_data(pkt: [*c]AVPacket, type: enum_AVPacketSideDataType, size: c_int) c_int;
pub extern fn av_packet_get_side_data(pkt: [*c]const AVPacket, type: enum_AVPacketSideDataType, size: [*c]c_int) [*c]u8;
pub extern fn av_packet_merge_side_data(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_split_side_data(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_side_data_name(type: enum_AVPacketSideDataType) [*c]const u8;
pub extern fn av_packet_pack_dictionary(dict: ?*AVDictionary, size: [*c]c_int) [*c]u8;
pub extern fn av_packet_unpack_dictionary(data: [*c]const u8, size: c_int, dict: [*c]?*AVDictionary) c_int;
pub extern fn av_packet_free_side_data(pkt: [*c]AVPacket) void;
pub extern fn av_packet_ref(dst: [*c]AVPacket, src: [*c]const AVPacket) c_int;
pub extern fn av_packet_unref(pkt: [*c]AVPacket) void;
pub extern fn av_packet_move_ref(dst: [*c]AVPacket, src: [*c]AVPacket) void;
pub extern fn av_packet_copy_props(dst: [*c]AVPacket, src: [*c]const AVPacket) c_int;
pub extern fn av_packet_make_refcounted(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_make_writable(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_rescale_ts(pkt: [*c]AVPacket, tb_src: AVRational, tb_dst: AVRational) void;
pub const struct_AVBSFInternal = opaque {};
pub const AVBSFInternal = struct_AVBSFInternal;
pub const AVBSFContext = struct_AVBSFContext;
pub const struct_AVBitStreamFilter = extern struct {
    name: [*c]const u8,
    codec_ids: [*c]const enum_AVCodecID,
    priv_class: [*c]const AVClass,
    priv_data_size: c_int,
    init: ?fn ([*c]AVBSFContext) callconv(.C) c_int,
    filter: ?fn ([*c]AVBSFContext, [*c]AVPacket) callconv(.C) c_int,
    close: ?fn ([*c]AVBSFContext) callconv(.C) void,
    flush: ?fn ([*c]AVBSFContext) callconv(.C) void,
};
pub const struct_AVBSFContext = extern struct {
    av_class: [*c]const AVClass,
    filter: [*c]const struct_AVBitStreamFilter,
    internal: ?*AVBSFInternal,
    priv_data: ?*c_void,
    par_in: [*c]AVCodecParameters,
    par_out: [*c]AVCodecParameters,
    time_base_in: AVRational,
    time_base_out: AVRational,
};
pub const AVBitStreamFilter = struct_AVBitStreamFilter;
pub extern fn av_bsf_get_by_name(name: [*c]const u8) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_iterate(@"opaque": [*c]?*c_void) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_alloc(filter: [*c]const AVBitStreamFilter, ctx: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_init(ctx: [*c]AVBSFContext) c_int;
pub extern fn av_bsf_send_packet(ctx: [*c]AVBSFContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_bsf_receive_packet(ctx: [*c]AVBSFContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_bsf_flush(ctx: [*c]AVBSFContext) void;
pub extern fn av_bsf_free(ctx: [*c][*c]AVBSFContext) void;
pub extern fn av_bsf_get_class() [*c]const AVClass;
pub const struct_AVBSFList = opaque {};
pub const AVBSFList = struct_AVBSFList;
pub extern fn av_bsf_list_alloc() ?*AVBSFList;
pub extern fn av_bsf_list_free(lst: [*c]?*AVBSFList) void;
pub extern fn av_bsf_list_append(lst: ?*AVBSFList, bsf: [*c]AVBSFContext) c_int;
pub extern fn av_bsf_list_append2(lst: ?*AVBSFList, bsf_name: [*c]const u8, options: [*c]?*AVDictionary) c_int;
pub extern fn av_bsf_list_finalize(lst: [*c]?*AVBSFList, bsf: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_list_parse_str(str: [*c]const u8, bsf: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_get_null_filter(bsf: [*c][*c]AVBSFContext) c_int;
pub const struct_AVProfile = extern struct {
    profile: c_int,
    name: [*c]const u8,
};
pub const AVProfile = struct_AVProfile;
pub const struct_AVCodecDefault = opaque {};
pub const AVCodecDefault = struct_AVCodecDefault;
pub const struct_AVPicture = extern struct {
    data: [8][*c]u8,
    linesize: [8]c_int,
};
pub const AVPicture = struct_AVPicture;
pub const enum_AVSubtitleType = extern enum(c_int) {
    SUBTITLE_NONE,
    SUBTITLE_BITMAP,
    SUBTITLE_TEXT,
    SUBTITLE_ASS,
    _,
};
pub const SUBTITLE_NONE = @enumToInt(enum_AVSubtitleType.SUBTITLE_NONE);
pub const SUBTITLE_BITMAP = @enumToInt(enum_AVSubtitleType.SUBTITLE_BITMAP);
pub const SUBTITLE_TEXT = @enumToInt(enum_AVSubtitleType.SUBTITLE_TEXT);
pub const SUBTITLE_ASS = @enumToInt(enum_AVSubtitleType.SUBTITLE_ASS);
pub const struct_AVSubtitleRect = extern struct {
    x: c_int,
    y: c_int,
    w: c_int,
    h: c_int,
    nb_colors: c_int,
    pict: AVPicture,
    data: [4][*c]u8,
    linesize: [4]c_int,
    type: enum_AVSubtitleType,
    text: [*c]u8,
    ass: [*c]u8,
    flags: c_int,
};
pub const AVSubtitleRect = struct_AVSubtitleRect;
pub const struct_AVSubtitle = extern struct {
    format: u16,
    start_display_time: u32,
    end_display_time: u32,
    num_rects: c_uint,
    rects: [*c][*c]AVSubtitleRect,
    pts: i64,
};
pub const struct_AVCodecHWConfigInternal = opaque {};
pub const struct_AVCodec = extern struct {
    name: [*c]const u8,
    long_name: [*c]const u8,
    type: enum_AVMediaType,
    id: enum_AVCodecID,
    capabilities: c_int,
    supported_framerates: [*c]const AVRational,
    pix_fmts: [*c]const enum_AVPixelFormat,
    supported_samplerates: [*c]const c_int,
    sample_fmts: [*c]const enum_AVSampleFormat,
    channel_layouts: [*c]const u64,
    max_lowres: u8,
    priv_class: [*c]const AVClass,
    profiles: [*c]const AVProfile,
    wrapper_name: [*c]const u8,
    priv_data_size: c_int,
    next: [*c]struct_AVCodec,
    update_thread_context: ?fn ([*c]struct_AVCodecContext, [*c]const struct_AVCodecContext) callconv(.C) c_int,
    defaults: ?*const AVCodecDefault,
    init_static_data: ?fn ([*c]struct_AVCodec) callconv(.C) void,
    init: ?fn ([*c]struct_AVCodecContext) callconv(.C) c_int,
    encode_sub: ?fn ([*c]struct_AVCodecContext, [*c]u8, c_int, [*c]const struct_AVSubtitle) callconv(.C) c_int,
    encode2: ?fn ([*c]struct_AVCodecContext, [*c]struct_AVPacket, [*c]const struct_AVFrame, [*c]c_int) callconv(.C) c_int,
    decode: ?fn ([*c]struct_AVCodecContext, ?*c_void, [*c]c_int, [*c]struct_AVPacket) callconv(.C) c_int,
    close: ?fn ([*c]struct_AVCodecContext) callconv(.C) c_int,
    receive_packet: ?fn ([*c]struct_AVCodecContext, [*c]struct_AVPacket) callconv(.C) c_int,
    receive_frame: ?fn ([*c]struct_AVCodecContext, [*c]struct_AVFrame) callconv(.C) c_int,
    flush: ?fn ([*c]struct_AVCodecContext) callconv(.C) void,
    caps_internal: c_int,
    bsfs: [*c]const u8,
    hw_configs: [*c]const ?*const struct_AVCodecHWConfigInternal,
    codec_tags: [*c]const u32,
};
pub const struct_AVCodecInternal = opaque {};
pub const enum_AVAudioServiceType = extern enum(c_int) {
    AV_AUDIO_SERVICE_TYPE_MAIN = 0,
    AV_AUDIO_SERVICE_TYPE_EFFECTS = 1,
    AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2,
    AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3,
    AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4,
    AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5,
    AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6,
    AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7,
    AV_AUDIO_SERVICE_TYPE_KARAOKE = 8,
    AV_AUDIO_SERVICE_TYPE_NB = 9,
    _,
};
pub const AV_AUDIO_SERVICE_TYPE_MAIN = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_MAIN);
pub const AV_AUDIO_SERVICE_TYPE_EFFECTS = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_EFFECTS);
pub const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED);
pub const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED);
pub const AV_AUDIO_SERVICE_TYPE_DIALOGUE = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_DIALOGUE);
pub const AV_AUDIO_SERVICE_TYPE_COMMENTARY = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_COMMENTARY);
pub const AV_AUDIO_SERVICE_TYPE_EMERGENCY = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_EMERGENCY);
pub const AV_AUDIO_SERVICE_TYPE_VOICE_OVER = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_VOICE_OVER);
pub const AV_AUDIO_SERVICE_TYPE_KARAOKE = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_KARAOKE);
pub const AV_AUDIO_SERVICE_TYPE_NB = @enumToInt(enum_AVAudioServiceType.AV_AUDIO_SERVICE_TYPE_NB);
pub const struct_RcOverride = extern struct {
    start_frame: c_int,
    end_frame: c_int,
    qscale: c_int,
    quality_factor: f32,
};
pub const RcOverride = struct_RcOverride;
pub const AVCodecContext = struct_AVCodecContext;
pub const struct_MpegEncContext = opaque {};
pub const struct_AVHWAccel = extern struct {
    name: [*c]const u8,
    type: enum_AVMediaType,
    id: enum_AVCodecID,
    pix_fmt: enum_AVPixelFormat,
    capabilities: c_int,
    alloc_frame: ?fn ([*c]AVCodecContext, [*c]AVFrame) callconv(.C) c_int,
    start_frame: ?fn ([*c]AVCodecContext, [*c]const u8, u32) callconv(.C) c_int,
    decode_params: ?fn ([*c]AVCodecContext, c_int, [*c]const u8, u32) callconv(.C) c_int,
    decode_slice: ?fn ([*c]AVCodecContext, [*c]const u8, u32) callconv(.C) c_int,
    end_frame: ?fn ([*c]AVCodecContext) callconv(.C) c_int,
    frame_priv_data_size: c_int,
    decode_mb: ?fn (?*struct_MpegEncContext) callconv(.C) void,
    init: ?fn ([*c]AVCodecContext) callconv(.C) c_int,
    uninit: ?fn ([*c]AVCodecContext) callconv(.C) c_int,
    priv_data_size: c_int,
    caps_internal: c_int,
    frame_params: ?fn ([*c]AVCodecContext, [*c]AVBufferRef) callconv(.C) c_int,
};
pub const enum_AVDiscard = extern enum(c_int) {
    AVDISCARD_NONE = -16,
    AVDISCARD_DEFAULT = 0,
    AVDISCARD_NONREF = 8,
    AVDISCARD_BIDIR = 16,
    AVDISCARD_NONINTRA = 24,
    AVDISCARD_NONKEY = 32,
    AVDISCARD_ALL = 48,
    _,
};
pub const AVDISCARD_NONE = @enumToInt(enum_AVDiscard.AVDISCARD_NONE);
pub const AVDISCARD_DEFAULT = @enumToInt(enum_AVDiscard.AVDISCARD_DEFAULT);
pub const AVDISCARD_NONREF = @enumToInt(enum_AVDiscard.AVDISCARD_NONREF);
pub const AVDISCARD_BIDIR = @enumToInt(enum_AVDiscard.AVDISCARD_BIDIR);
pub const AVDISCARD_NONINTRA = @enumToInt(enum_AVDiscard.AVDISCARD_NONINTRA);
pub const AVDISCARD_NONKEY = @enumToInt(enum_AVDiscard.AVDISCARD_NONKEY);
pub const AVDISCARD_ALL = @enumToInt(enum_AVDiscard.AVDISCARD_ALL);
pub const struct_AVCodecDescriptor = extern struct {
    id: enum_AVCodecID,
    type: enum_AVMediaType,
    name: [*c]const u8,
    long_name: [*c]const u8,
    props: c_int,
    mime_types: [*c]const [*c]const u8,
    profiles: [*c]const struct_AVProfile,
};
pub const AVCodecDescriptor = struct_AVCodecDescriptor;
pub const struct_AVCodecContext = extern struct {
    av_class: [*c]const AVClass,
    log_level_offset: c_int,
    codec_type: enum_AVMediaType,
    codec: [*c]const struct_AVCodec,
    codec_id: enum_AVCodecID,
    codec_tag: c_uint,
    priv_data: ?*c_void,
    internal: ?*struct_AVCodecInternal,
    @"opaque": ?*c_void,
    bit_rate: i64,
    bit_rate_tolerance: c_int,
    global_quality: c_int,
    compression_level: c_int,
    flags: c_int,
    flags2: c_int,
    extradata: [*c]u8,
    extradata_size: c_int,
    time_base: AVRational,
    ticks_per_frame: c_int,
    delay: c_int,
    width: c_int,
    height: c_int,
    coded_width: c_int,
    coded_height: c_int,
    gop_size: c_int,
    pix_fmt: enum_AVPixelFormat,
    draw_horiz_band: ?fn ([*c]struct_AVCodecContext, [*c]const AVFrame, [*c]c_int, c_int, c_int, c_int) callconv(.C) void,
    get_format: ?fn ([*c]struct_AVCodecContext, [*c]const enum_AVPixelFormat) callconv(.C) enum_AVPixelFormat,
    max_b_frames: c_int,
    b_quant_factor: f32,
    b_frame_strategy: c_int,
    b_quant_offset: f32,
    has_b_frames: c_int,
    mpeg_quant: c_int,
    i_quant_factor: f32,
    i_quant_offset: f32,
    lumi_masking: f32,
    temporal_cplx_masking: f32,
    spatial_cplx_masking: f32,
    p_masking: f32,
    dark_masking: f32,
    slice_count: c_int,
    prediction_method: c_int,
    slice_offset: [*c]c_int,
    sample_aspect_ratio: AVRational,
    me_cmp: c_int,
    me_sub_cmp: c_int,
    mb_cmp: c_int,
    ildct_cmp: c_int,
    dia_size: c_int,
    last_predictor_count: c_int,
    pre_me: c_int,
    me_pre_cmp: c_int,
    pre_dia_size: c_int,
    me_subpel_quality: c_int,
    me_range: c_int,
    slice_flags: c_int,
    mb_decision: c_int,
    intra_matrix: [*c]u16,
    inter_matrix: [*c]u16,
    scenechange_threshold: c_int,
    noise_reduction: c_int,
    intra_dc_precision: c_int,
    skip_top: c_int,
    skip_bottom: c_int,
    mb_lmin: c_int,
    mb_lmax: c_int,
    me_penalty_compensation: c_int,
    bidir_refine: c_int,
    brd_scale: c_int,
    keyint_min: c_int,
    refs: c_int,
    chromaoffset: c_int,
    mv0_threshold: c_int,
    b_sensitivity: c_int,
    color_primaries: enum_AVColorPrimaries,
    color_trc: enum_AVColorTransferCharacteristic,
    colorspace: enum_AVColorSpace,
    color_range: enum_AVColorRange,
    chroma_sample_location: enum_AVChromaLocation,
    slices: c_int,
    field_order: enum_AVFieldOrder,
    sample_rate: c_int,
    channels: c_int,
    sample_fmt: enum_AVSampleFormat,
    frame_size: c_int,
    frame_number: c_int,
    block_align: c_int,
    cutoff: c_int,
    channel_layout: u64,
    request_channel_layout: u64,
    audio_service_type: enum_AVAudioServiceType,
    request_sample_fmt: enum_AVSampleFormat,
    get_buffer2: ?fn ([*c]struct_AVCodecContext, [*c]AVFrame, c_int) callconv(.C) c_int,
    refcounted_frames: c_int,
    qcompress: f32,
    qblur: f32,
    qmin: c_int,
    qmax: c_int,
    max_qdiff: c_int,
    rc_buffer_size: c_int,
    rc_override_count: c_int,
    rc_override: [*c]RcOverride,
    rc_max_rate: i64,
    rc_min_rate: i64,
    rc_max_available_vbv_use: f32,
    rc_min_vbv_overflow_use: f32,
    rc_initial_buffer_occupancy: c_int,
    coder_type: c_int,
    context_model: c_int,
    frame_skip_threshold: c_int,
    frame_skip_factor: c_int,
    frame_skip_exp: c_int,
    frame_skip_cmp: c_int,
    trellis: c_int,
    min_prediction_order: c_int,
    max_prediction_order: c_int,
    timecode_frame_start: i64,
    rtp_callback: ?fn ([*c]struct_AVCodecContext, ?*c_void, c_int, c_int) callconv(.C) void,
    rtp_payload_size: c_int,
    mv_bits: c_int,
    header_bits: c_int,
    i_tex_bits: c_int,
    p_tex_bits: c_int,
    i_count: c_int,
    p_count: c_int,
    skip_count: c_int,
    misc_bits: c_int,
    frame_bits: c_int,
    stats_out: [*c]u8,
    stats_in: [*c]u8,
    workaround_bugs: c_int,
    strict_std_compliance: c_int,
    error_concealment: c_int,
    debug: c_int,
    err_recognition: c_int,
    reordered_opaque: i64,
    hwaccel: [*c]const struct_AVHWAccel,
    hwaccel_context: ?*c_void,
    @"error": [8]u64,
    dct_algo: c_int,
    idct_algo: c_int,
    bits_per_coded_sample: c_int,
    bits_per_raw_sample: c_int,
    lowres: c_int,
    coded_frame: [*c]AVFrame,
    thread_count: c_int,
    thread_type: c_int,
    active_thread_type: c_int,
    thread_safe_callbacks: c_int,
    execute: ?fn ([*c]struct_AVCodecContext, ?fn ([*c]struct_AVCodecContext, ?*c_void) callconv(.C) c_int, ?*c_void, [*c]c_int, c_int, c_int) callconv(.C) c_int,
    execute2: ?fn ([*c]struct_AVCodecContext, ?fn ([*c]struct_AVCodecContext, ?*c_void, c_int, c_int) callconv(.C) c_int, ?*c_void, [*c]c_int, c_int) callconv(.C) c_int,
    nsse_weight: c_int,
    profile: c_int,
    level: c_int,
    skip_loop_filter: enum_AVDiscard,
    skip_idct: enum_AVDiscard,
    skip_frame: enum_AVDiscard,
    subtitle_header: [*c]u8,
    subtitle_header_size: c_int,
    vbv_delay: u64,
    side_data_only_packets: c_int,
    initial_padding: c_int,
    framerate: AVRational,
    sw_pix_fmt: enum_AVPixelFormat,
    pkt_timebase: AVRational,
    codec_descriptor: [*c]const AVCodecDescriptor,
    pts_correction_num_faulty_pts: i64,
    pts_correction_num_faulty_dts: i64,
    pts_correction_last_pts: i64,
    pts_correction_last_dts: i64,
    sub_charenc: [*c]u8,
    sub_charenc_mode: c_int,
    skip_alpha: c_int,
    seek_preroll: c_int,
    debug_mv: c_int,
    chroma_intra_matrix: [*c]u16,
    dump_separator: [*c]u8,
    codec_whitelist: [*c]u8,
    properties: c_uint,
    coded_side_data: [*c]AVPacketSideData,
    nb_coded_side_data: c_int,
    hw_frames_ctx: [*c]AVBufferRef,
    sub_text_format: c_int,
    trailing_padding: c_int,
    max_pixels: i64,
    hw_device_ctx: [*c]AVBufferRef,
    hwaccel_flags: c_int,
    apply_cropping: c_int,
    extra_hw_frames: c_int,
    discard_damaged_percentage: c_int,
    max_samples: i64,
    export_side_data: c_int,
};
pub const AVCodec = struct_AVCodec;
pub extern fn av_codec_iterate(@"opaque": [*c]?*c_void) [*c]const AVCodec;
pub extern fn avcodec_find_decoder(id: enum_AVCodecID) [*c]AVCodec;
pub extern fn avcodec_find_decoder_by_name(name: [*c]const u8) [*c]AVCodec;
pub extern fn avcodec_find_encoder(id: enum_AVCodecID) [*c]AVCodec;
pub extern fn avcodec_find_encoder_by_name(name: [*c]const u8) [*c]AVCodec;
pub extern fn av_codec_is_encoder(codec: [*c]const AVCodec) c_int;
pub extern fn av_codec_is_decoder(codec: [*c]const AVCodec) c_int;
const enum_unnamed_16 = extern enum(c_int) {
    AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX = 1,
    AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX = 2,
    AV_CODEC_HW_CONFIG_METHOD_INTERNAL = 4,
    AV_CODEC_HW_CONFIG_METHOD_AD_HOC = 8,
    _,
};
pub const AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX = @enumToInt(enum_unnamed_16.AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX);
pub const AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX = @enumToInt(enum_unnamed_16.AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX);
pub const AV_CODEC_HW_CONFIG_METHOD_INTERNAL = @enumToInt(enum_unnamed_16.AV_CODEC_HW_CONFIG_METHOD_INTERNAL);
pub const AV_CODEC_HW_CONFIG_METHOD_AD_HOC = @enumToInt(enum_unnamed_16.AV_CODEC_HW_CONFIG_METHOD_AD_HOC);
pub const struct_AVCodecHWConfig = extern struct {
    pix_fmt: enum_AVPixelFormat,
    methods: c_int,
    device_type: enum_AVHWDeviceType,
};
pub const AVCodecHWConfig = struct_AVCodecHWConfig;
pub extern fn avcodec_get_hw_config(codec: [*c]const AVCodec, index: c_int) [*c]const AVCodecHWConfig;
pub extern fn avcodec_descriptor_get(id: enum_AVCodecID) [*c]const AVCodecDescriptor;
pub extern fn avcodec_descriptor_next(prev: [*c]const AVCodecDescriptor) [*c]const AVCodecDescriptor;
pub extern fn avcodec_descriptor_get_by_name(name: [*c]const u8) [*c]const AVCodecDescriptor;
pub const struct_AVPanScan = extern struct {
    id: c_int,
    width: c_int,
    height: c_int,
    position: [3][2]i16,
};
pub const AVPanScan = struct_AVPanScan;
pub const struct_AVCPBProperties = extern struct {
    max_bitrate: c_int,
    min_bitrate: c_int,
    avg_bitrate: c_int,
    buffer_size: c_int,
    vbv_delay: u64,
};
pub const AVCPBProperties = struct_AVCPBProperties;
pub const struct_AVProducerReferenceTime = extern struct {
    wallclock: i64,
    flags: c_int,
};
pub const AVProducerReferenceTime = struct_AVProducerReferenceTime;
pub extern fn av_codec_get_pkt_timebase(avctx: [*c]const AVCodecContext) AVRational;
pub extern fn av_codec_set_pkt_timebase(avctx: [*c]AVCodecContext, val: AVRational) void;
pub extern fn av_codec_get_codec_descriptor(avctx: [*c]const AVCodecContext) [*c]const AVCodecDescriptor;
pub extern fn av_codec_set_codec_descriptor(avctx: [*c]AVCodecContext, desc: [*c]const AVCodecDescriptor) void;
pub extern fn av_codec_get_codec_properties(avctx: [*c]const AVCodecContext) c_uint;
pub extern fn av_codec_get_lowres(avctx: [*c]const AVCodecContext) c_int;
pub extern fn av_codec_set_lowres(avctx: [*c]AVCodecContext, val: c_int) void;
pub extern fn av_codec_get_seek_preroll(avctx: [*c]const AVCodecContext) c_int;
pub extern fn av_codec_set_seek_preroll(avctx: [*c]AVCodecContext, val: c_int) void;
pub extern fn av_codec_get_chroma_intra_matrix(avctx: [*c]const AVCodecContext) [*c]u16;
pub extern fn av_codec_set_chroma_intra_matrix(avctx: [*c]AVCodecContext, val: [*c]u16) void;
pub extern fn av_codec_get_max_lowres(codec: [*c]const AVCodec) c_int;
pub const AVHWAccel = struct_AVHWAccel;
pub const AVSubtitle = struct_AVSubtitle;
pub extern fn av_codec_next(c: [*c]const AVCodec) [*c]AVCodec;
pub extern fn avcodec_version() c_uint;
pub extern fn avcodec_configuration() [*c]const u8;
pub extern fn avcodec_license() [*c]const u8;
pub extern fn avcodec_register(codec: [*c]AVCodec) void;
pub extern fn avcodec_register_all() void;
pub extern fn avcodec_alloc_context3(codec: [*c]const AVCodec) [*c]AVCodecContext;
pub extern fn avcodec_free_context(avctx: [*c][*c]AVCodecContext) void;
pub extern fn avcodec_get_context_defaults3(s: [*c]AVCodecContext, codec: [*c]const AVCodec) c_int;
pub extern fn avcodec_get_class() [*c]const AVClass;
pub extern fn avcodec_get_frame_class() [*c]const AVClass;
pub extern fn avcodec_get_subtitle_rect_class() [*c]const AVClass;
pub extern fn avcodec_copy_context(dest: [*c]AVCodecContext, src: [*c]const AVCodecContext) c_int;
pub extern fn avcodec_parameters_from_context(par: [*c]AVCodecParameters, codec: [*c]const AVCodecContext) c_int;
pub extern fn avcodec_parameters_to_context(codec: [*c]AVCodecContext, par: [*c]const AVCodecParameters) c_int;
pub extern fn avcodec_open2(avctx: [*c]AVCodecContext, codec: [*c]const AVCodec, options: [*c]?*AVDictionary) c_int;
pub extern fn avcodec_close(avctx: [*c]AVCodecContext) c_int;
pub extern fn avsubtitle_free(sub: [*c]AVSubtitle) void;
pub extern fn avcodec_default_get_buffer2(s: [*c]AVCodecContext, frame: [*c]AVFrame, flags: c_int) c_int;
pub extern fn avcodec_align_dimensions(s: [*c]AVCodecContext, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn avcodec_align_dimensions2(s: [*c]AVCodecContext, width: [*c]c_int, height: [*c]c_int, linesize_align: [*c]c_int) void;
pub extern fn avcodec_enum_to_chroma_pos(xpos: [*c]c_int, ypos: [*c]c_int, pos: enum_AVChromaLocation) c_int;
pub extern fn avcodec_chroma_pos_to_enum(xpos: c_int, ypos: c_int) enum_AVChromaLocation;
pub extern fn avcodec_decode_audio4(avctx: [*c]AVCodecContext, frame: [*c]AVFrame, got_frame_ptr: [*c]c_int, avpkt: [*c]const AVPacket) c_int;
pub extern fn avcodec_decode_video2(avctx: [*c]AVCodecContext, picture: [*c]AVFrame, got_picture_ptr: [*c]c_int, avpkt: [*c]const AVPacket) c_int;
pub extern fn avcodec_decode_subtitle2(avctx: [*c]AVCodecContext, sub: [*c]AVSubtitle, got_sub_ptr: [*c]c_int, avpkt: [*c]AVPacket) c_int;
pub extern fn avcodec_send_packet(avctx: [*c]AVCodecContext, avpkt: [*c]const AVPacket) c_int;
pub extern fn avcodec_receive_frame(avctx: [*c]AVCodecContext, frame: [*c]AVFrame) c_int;
pub extern fn avcodec_send_frame(avctx: [*c]AVCodecContext, frame: [*c]const AVFrame) c_int;
pub extern fn avcodec_receive_packet(avctx: [*c]AVCodecContext, avpkt: [*c]AVPacket) c_int;
pub extern fn avcodec_get_hw_frames_parameters(avctx: [*c]AVCodecContext, device_ref: [*c]AVBufferRef, hw_pix_fmt: enum_AVPixelFormat, out_frames_ref: [*c][*c]AVBufferRef) c_int;
pub const enum_AVPictureStructure = extern enum(c_int) {
    AV_PICTURE_STRUCTURE_UNKNOWN,
    AV_PICTURE_STRUCTURE_TOP_FIELD,
    AV_PICTURE_STRUCTURE_BOTTOM_FIELD,
    AV_PICTURE_STRUCTURE_FRAME,
    _,
};
pub const AV_PICTURE_STRUCTURE_UNKNOWN = @enumToInt(enum_AVPictureStructure.AV_PICTURE_STRUCTURE_UNKNOWN);
pub const AV_PICTURE_STRUCTURE_TOP_FIELD = @enumToInt(enum_AVPictureStructure.AV_PICTURE_STRUCTURE_TOP_FIELD);
pub const AV_PICTURE_STRUCTURE_BOTTOM_FIELD = @enumToInt(enum_AVPictureStructure.AV_PICTURE_STRUCTURE_BOTTOM_FIELD);
pub const AV_PICTURE_STRUCTURE_FRAME = @enumToInt(enum_AVPictureStructure.AV_PICTURE_STRUCTURE_FRAME);
pub const AVCodecParserContext = struct_AVCodecParserContext;
pub const struct_AVCodecParser = extern struct {
    codec_ids: [5]c_int,
    priv_data_size: c_int,
    parser_init: ?fn ([*c]AVCodecParserContext) callconv(.C) c_int,
    parser_parse: ?fn ([*c]AVCodecParserContext, [*c]AVCodecContext, [*c][*c]const u8, [*c]c_int, [*c]const u8, c_int) callconv(.C) c_int,
    parser_close: ?fn ([*c]AVCodecParserContext) callconv(.C) void,
    split: ?fn ([*c]AVCodecContext, [*c]const u8, c_int) callconv(.C) c_int,
    next: [*c]struct_AVCodecParser,
};
pub const struct_AVCodecParserContext = extern struct {
    priv_data: ?*c_void,
    parser: [*c]struct_AVCodecParser,
    frame_offset: i64,
    cur_offset: i64,
    next_frame_offset: i64,
    pict_type: c_int,
    repeat_pict: c_int,
    pts: i64,
    dts: i64,
    last_pts: i64,
    last_dts: i64,
    fetch_timestamp: c_int,
    cur_frame_start_index: c_int,
    cur_frame_offset: [4]i64,
    cur_frame_pts: [4]i64,
    cur_frame_dts: [4]i64,
    flags: c_int,
    offset: i64,
    cur_frame_end: [4]i64,
    key_frame: c_int,
    convergence_duration: i64,
    dts_sync_point: c_int,
    dts_ref_dts_delta: c_int,
    pts_dts_delta: c_int,
    cur_frame_pos: [4]i64,
    pos: i64,
    last_pos: i64,
    duration: c_int,
    field_order: enum_AVFieldOrder,
    picture_structure: enum_AVPictureStructure,
    output_picture_number: c_int,
    width: c_int,
    height: c_int,
    coded_width: c_int,
    coded_height: c_int,
    format: c_int,
};
pub const AVCodecParser = struct_AVCodecParser;
pub extern fn av_parser_iterate(@"opaque": [*c]?*c_void) [*c]const AVCodecParser;
pub extern fn av_parser_next(c: [*c]const AVCodecParser) [*c]AVCodecParser;
pub extern fn av_register_codec_parser(parser: [*c]AVCodecParser) void;
pub extern fn av_parser_init(codec_id: c_int) [*c]AVCodecParserContext;
pub extern fn av_parser_parse2(s: [*c]AVCodecParserContext, avctx: [*c]AVCodecContext, poutbuf: [*c][*c]u8, poutbuf_size: [*c]c_int, buf: [*c]const u8, buf_size: c_int, pts: i64, dts: i64, pos: i64) c_int;
pub extern fn av_parser_change(s: [*c]AVCodecParserContext, avctx: [*c]AVCodecContext, poutbuf: [*c][*c]u8, poutbuf_size: [*c]c_int, buf: [*c]const u8, buf_size: c_int, keyframe: c_int) c_int;
pub extern fn av_parser_close(s: [*c]AVCodecParserContext) void;
pub extern fn avcodec_encode_audio2(avctx: [*c]AVCodecContext, avpkt: [*c]AVPacket, frame: [*c]const AVFrame, got_packet_ptr: [*c]c_int) c_int;
pub extern fn avcodec_encode_video2(avctx: [*c]AVCodecContext, avpkt: [*c]AVPacket, frame: [*c]const AVFrame, got_packet_ptr: [*c]c_int) c_int;
pub extern fn avcodec_encode_subtitle(avctx: [*c]AVCodecContext, buf: [*c]u8, buf_size: c_int, sub: [*c]const AVSubtitle) c_int;
pub extern fn avpicture_alloc(picture: [*c]AVPicture, pix_fmt: enum_AVPixelFormat, width: c_int, height: c_int) c_int;
pub extern fn avpicture_free(picture: [*c]AVPicture) void;
pub extern fn avpicture_fill(picture: [*c]AVPicture, ptr: [*c]const u8, pix_fmt: enum_AVPixelFormat, width: c_int, height: c_int) c_int;
pub extern fn avpicture_layout(src: [*c]const AVPicture, pix_fmt: enum_AVPixelFormat, width: c_int, height: c_int, dest: [*c]u8, dest_size: c_int) c_int;
pub extern fn avpicture_get_size(pix_fmt: enum_AVPixelFormat, width: c_int, height: c_int) c_int;
pub extern fn av_picture_copy(dst: [*c]AVPicture, src: [*c]const AVPicture, pix_fmt: enum_AVPixelFormat, width: c_int, height: c_int) void;
pub extern fn av_picture_crop(dst: [*c]AVPicture, src: [*c]const AVPicture, pix_fmt: enum_AVPixelFormat, top_band: c_int, left_band: c_int) c_int;
pub extern fn av_picture_pad(dst: [*c]AVPicture, src: [*c]const AVPicture, height: c_int, width: c_int, pix_fmt: enum_AVPixelFormat, padtop: c_int, padbottom: c_int, padleft: c_int, padright: c_int, color: [*c]c_int) c_int;
pub extern fn avcodec_get_chroma_sub_sample(pix_fmt: enum_AVPixelFormat, h_shift: [*c]c_int, v_shift: [*c]c_int) void;
pub extern fn avcodec_pix_fmt_to_codec_tag(pix_fmt: enum_AVPixelFormat) c_uint;
pub extern fn avcodec_find_best_pix_fmt_of_list(pix_fmt_list: [*c]const enum_AVPixelFormat, src_pix_fmt: enum_AVPixelFormat, has_alpha: c_int, loss_ptr: [*c]c_int) enum_AVPixelFormat;
pub extern fn avcodec_get_pix_fmt_loss(dst_pix_fmt: enum_AVPixelFormat, src_pix_fmt: enum_AVPixelFormat, has_alpha: c_int) c_int;
pub extern fn avcodec_find_best_pix_fmt_of_2(dst_pix_fmt1: enum_AVPixelFormat, dst_pix_fmt2: enum_AVPixelFormat, src_pix_fmt: enum_AVPixelFormat, has_alpha: c_int, loss_ptr: [*c]c_int) enum_AVPixelFormat;
pub extern fn avcodec_find_best_pix_fmt2(dst_pix_fmt1: enum_AVPixelFormat, dst_pix_fmt2: enum_AVPixelFormat, src_pix_fmt: enum_AVPixelFormat, has_alpha: c_int, loss_ptr: [*c]c_int) enum_AVPixelFormat;
pub extern fn avcodec_default_get_format(s: [*c]struct_AVCodecContext, fmt: [*c]const enum_AVPixelFormat) enum_AVPixelFormat;
pub extern fn av_get_codec_tag_string(buf: [*c]u8, buf_size: usize, codec_tag: c_uint) usize;
pub extern fn avcodec_string(buf: [*c]u8, buf_size: c_int, enc: [*c]AVCodecContext, encode: c_int) void;
pub extern fn av_get_profile_name(codec: [*c]const AVCodec, profile: c_int) [*c]const u8;
pub extern fn avcodec_profile_name(codec_id: enum_AVCodecID, profile: c_int) [*c]const u8;
pub extern fn avcodec_default_execute(c: [*c]AVCodecContext, func: ?fn ([*c]AVCodecContext, ?*c_void) callconv(.C) c_int, arg: ?*c_void, ret: [*c]c_int, count: c_int, size: c_int) c_int;
pub extern fn avcodec_default_execute2(c: [*c]AVCodecContext, func: ?fn ([*c]AVCodecContext, ?*c_void, c_int, c_int) callconv(.C) c_int, arg: ?*c_void, ret: [*c]c_int, count: c_int) c_int;
pub extern fn avcodec_fill_audio_frame(frame: [*c]AVFrame, nb_channels: c_int, sample_fmt: enum_AVSampleFormat, buf: [*c]const u8, buf_size: c_int, @"align": c_int) c_int;
pub extern fn avcodec_flush_buffers(avctx: [*c]AVCodecContext) void;
pub extern fn av_get_bits_per_sample(codec_id: enum_AVCodecID) c_int;
pub extern fn av_get_pcm_codec(fmt: enum_AVSampleFormat, be: c_int) enum_AVCodecID;
pub extern fn av_get_exact_bits_per_sample(codec_id: enum_AVCodecID) c_int;
pub extern fn av_get_audio_frame_duration(avctx: [*c]AVCodecContext, frame_bytes: c_int) c_int;
pub extern fn av_get_audio_frame_duration2(par: [*c]AVCodecParameters, frame_bytes: c_int) c_int;
pub const struct_AVBitStreamFilterContext = extern struct {
    priv_data: ?*c_void,
    filter: [*c]const struct_AVBitStreamFilter,
    parser: [*c]AVCodecParserContext,
    next: [*c]struct_AVBitStreamFilterContext,
    args: [*c]u8,
};
pub const AVBitStreamFilterContext = struct_AVBitStreamFilterContext;
pub extern fn av_register_bitstream_filter(bsf: [*c]AVBitStreamFilter) void;
pub extern fn av_bitstream_filter_init(name: [*c]const u8) [*c]AVBitStreamFilterContext;
pub extern fn av_bitstream_filter_filter(bsfc: [*c]AVBitStreamFilterContext, avctx: [*c]AVCodecContext, args: [*c]const u8, poutbuf: [*c][*c]u8, poutbuf_size: [*c]c_int, buf: [*c]const u8, buf_size: c_int, keyframe: c_int) c_int;
pub extern fn av_bitstream_filter_close(bsf: [*c]AVBitStreamFilterContext) void;
pub extern fn av_bitstream_filter_next(f: [*c]const AVBitStreamFilter) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_next(@"opaque": [*c]?*c_void) [*c]const AVBitStreamFilter;
pub extern fn av_fast_padded_malloc(ptr: ?*c_void, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_fast_padded_mallocz(ptr: ?*c_void, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_xiphlacing(s: [*c]u8, v: c_uint) c_uint;
pub extern fn av_register_hwaccel(hwaccel: [*c]AVHWAccel) void;
pub extern fn av_hwaccel_next(hwaccel: [*c]const AVHWAccel) [*c]AVHWAccel;
pub const enum_AVLockOp = extern enum(c_int) {
    AV_LOCK_CREATE,
    AV_LOCK_OBTAIN,
    AV_LOCK_RELEASE,
    AV_LOCK_DESTROY,
    _,
};
pub const AV_LOCK_CREATE = @enumToInt(enum_AVLockOp.AV_LOCK_CREATE);
pub const AV_LOCK_OBTAIN = @enumToInt(enum_AVLockOp.AV_LOCK_OBTAIN);
pub const AV_LOCK_RELEASE = @enumToInt(enum_AVLockOp.AV_LOCK_RELEASE);
pub const AV_LOCK_DESTROY = @enumToInt(enum_AVLockOp.AV_LOCK_DESTROY);
pub extern fn av_lockmgr_register(cb: ?fn ([*c]?*c_void, enum_AVLockOp) callconv(.C) c_int) c_int;
pub extern fn avcodec_is_open(s: [*c]AVCodecContext) c_int;
pub extern fn av_cpb_properties_alloc(size: [*c]usize) [*c]AVCPBProperties;
pub const clock_t = __darwin_clock_t;
pub const time_t = __darwin_time_t;
pub const struct_timespec = extern struct {
    tv_sec: __darwin_time_t,
    tv_nsec: c_long,
};
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]u8,
};
pub extern var tzname: [*c][*c]u8;
pub extern var getdate_err: c_int;
pub extern var timezone: c_long;
pub extern var daylight: c_int;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn clock() clock_t;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern fn time([*c]time_t) time_t;
pub extern fn tzset() void;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn posix2time(time_t) time_t;
pub extern fn tzsetwall() void;
pub extern fn time2posix(time_t) time_t;
pub extern fn timelocal([*c]struct_tm) time_t;
pub extern fn timegm([*c]struct_tm) time_t;
pub extern fn nanosleep(__rqtp: [*c]const struct_timespec, __rmtp: [*c]struct_timespec) c_int;
const enum_unnamed_17 = extern enum(c_int) {
    _CLOCK_REALTIME = 0,
    _CLOCK_MONOTONIC = 6,
    _CLOCK_MONOTONIC_RAW = 4,
    _CLOCK_MONOTONIC_RAW_APPROX = 5,
    _CLOCK_UPTIME_RAW = 8,
    _CLOCK_UPTIME_RAW_APPROX = 9,
    _CLOCK_PROCESS_CPUTIME_ID = 12,
    _CLOCK_THREAD_CPUTIME_ID = 16,
    _,
};
pub const _CLOCK_REALTIME = @enumToInt(enum_unnamed_17._CLOCK_REALTIME);
pub const _CLOCK_MONOTONIC = @enumToInt(enum_unnamed_17._CLOCK_MONOTONIC);
pub const _CLOCK_MONOTONIC_RAW = @enumToInt(enum_unnamed_17._CLOCK_MONOTONIC_RAW);
pub const _CLOCK_MONOTONIC_RAW_APPROX = @enumToInt(enum_unnamed_17._CLOCK_MONOTONIC_RAW_APPROX);
pub const _CLOCK_UPTIME_RAW = @enumToInt(enum_unnamed_17._CLOCK_UPTIME_RAW);
pub const _CLOCK_UPTIME_RAW_APPROX = @enumToInt(enum_unnamed_17._CLOCK_UPTIME_RAW_APPROX);
pub const _CLOCK_PROCESS_CPUTIME_ID = @enumToInt(enum_unnamed_17._CLOCK_PROCESS_CPUTIME_ID);
pub const _CLOCK_THREAD_CPUTIME_ID = @enumToInt(enum_unnamed_17._CLOCK_THREAD_CPUTIME_ID);
pub const clockid_t = enum_unnamed_17;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_gettime_nsec_np(__clock_id: clockid_t) __uint64_t;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn timespec_get(ts: [*c]struct_timespec, base: c_int) c_int;
pub const struct_AVIOInterruptCB = extern struct {
    callback: ?fn (?*c_void) callconv(.C) c_int,
    @"opaque": ?*c_void,
};
pub const AVIOInterruptCB = struct_AVIOInterruptCB;
pub const enum_AVIODirEntryType = extern enum(c_int) {
    AVIO_ENTRY_UNKNOWN,
    AVIO_ENTRY_BLOCK_DEVICE,
    AVIO_ENTRY_CHARACTER_DEVICE,
    AVIO_ENTRY_DIRECTORY,
    AVIO_ENTRY_NAMED_PIPE,
    AVIO_ENTRY_SYMBOLIC_LINK,
    AVIO_ENTRY_SOCKET,
    AVIO_ENTRY_FILE,
    AVIO_ENTRY_SERVER,
    AVIO_ENTRY_SHARE,
    AVIO_ENTRY_WORKGROUP,
    _,
};
pub const AVIO_ENTRY_UNKNOWN = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_UNKNOWN);
pub const AVIO_ENTRY_BLOCK_DEVICE = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_BLOCK_DEVICE);
pub const AVIO_ENTRY_CHARACTER_DEVICE = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_CHARACTER_DEVICE);
pub const AVIO_ENTRY_DIRECTORY = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_DIRECTORY);
pub const AVIO_ENTRY_NAMED_PIPE = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_NAMED_PIPE);
pub const AVIO_ENTRY_SYMBOLIC_LINK = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_SYMBOLIC_LINK);
pub const AVIO_ENTRY_SOCKET = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_SOCKET);
pub const AVIO_ENTRY_FILE = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_FILE);
pub const AVIO_ENTRY_SERVER = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_SERVER);
pub const AVIO_ENTRY_SHARE = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_SHARE);
pub const AVIO_ENTRY_WORKGROUP = @enumToInt(enum_AVIODirEntryType.AVIO_ENTRY_WORKGROUP);
pub const struct_AVIODirEntry = extern struct {
    name: [*c]u8,
    type: c_int,
    utf8: c_int,
    size: i64,
    modification_timestamp: i64,
    access_timestamp: i64,
    status_change_timestamp: i64,
    user_id: i64,
    group_id: i64,
    filemode: i64,
};
pub const AVIODirEntry = struct_AVIODirEntry;
pub const struct_URLContext = opaque {};
pub const struct_AVIODirContext = extern struct {
    url_context: ?*struct_URLContext,
};
pub const AVIODirContext = struct_AVIODirContext;
pub const enum_AVIODataMarkerType = extern enum(c_int) {
    AVIO_DATA_MARKER_HEADER,
    AVIO_DATA_MARKER_SYNC_POINT,
    AVIO_DATA_MARKER_BOUNDARY_POINT,
    AVIO_DATA_MARKER_UNKNOWN,
    AVIO_DATA_MARKER_TRAILER,
    AVIO_DATA_MARKER_FLUSH_POINT,
    _,
};
pub const AVIO_DATA_MARKER_HEADER = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_HEADER);
pub const AVIO_DATA_MARKER_SYNC_POINT = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_SYNC_POINT);
pub const AVIO_DATA_MARKER_BOUNDARY_POINT = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_BOUNDARY_POINT);
pub const AVIO_DATA_MARKER_UNKNOWN = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_UNKNOWN);
pub const AVIO_DATA_MARKER_TRAILER = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_TRAILER);
pub const AVIO_DATA_MARKER_FLUSH_POINT = @enumToInt(enum_AVIODataMarkerType.AVIO_DATA_MARKER_FLUSH_POINT);
pub const struct_AVIOContext = extern struct {
    av_class: [*c]const AVClass,
    buffer: [*c]u8,
    buffer_size: c_int,
    buf_ptr: [*c]u8,
    buf_end: [*c]u8,
    @"opaque": ?*c_void,
    read_packet: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int,
    write_packet: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int,
    seek: ?fn (?*c_void, i64, c_int) callconv(.C) i64,
    pos: i64,
    eof_reached: c_int,
    write_flag: c_int,
    max_packet_size: c_int,
    checksum: c_ulong,
    checksum_ptr: [*c]u8,
    update_checksum: ?fn (c_ulong, [*c]const u8, c_uint) callconv(.C) c_ulong,
    @"error": c_int,
    read_pause: ?fn (?*c_void, c_int) callconv(.C) c_int,
    read_seek: ?fn (?*c_void, c_int, i64, c_int) callconv(.C) i64,
    seekable: c_int,
    maxsize: i64,
    direct: c_int,
    bytes_read: i64,
    seek_count: c_int,
    writeout_count: c_int,
    orig_buffer_size: c_int,
    short_seek_threshold: c_int,
    protocol_whitelist: [*c]const u8,
    protocol_blacklist: [*c]const u8,
    write_data_type: ?fn (?*c_void, [*c]u8, c_int, enum_AVIODataMarkerType, i64) callconv(.C) c_int,
    ignore_boundary_point: c_int,
    current_type: enum_AVIODataMarkerType,
    last_time: i64,
    short_seek_get: ?fn (?*c_void) callconv(.C) c_int,
    written: i64,
    buf_ptr_max: [*c]u8,
    min_packet_size: c_int,
};
pub const AVIOContext = struct_AVIOContext;
pub extern fn avio_find_protocol_name(url: [*c]const u8) [*c]const u8;
pub extern fn avio_check(url: [*c]const u8, flags: c_int) c_int;
pub extern fn avpriv_io_move(url_src: [*c]const u8, url_dst: [*c]const u8) c_int;
pub extern fn avpriv_io_delete(url: [*c]const u8) c_int;
pub extern fn avio_open_dir(s: [*c][*c]AVIODirContext, url: [*c]const u8, options: [*c]?*AVDictionary) c_int;
pub extern fn avio_read_dir(s: [*c]AVIODirContext, next: [*c][*c]AVIODirEntry) c_int;
pub extern fn avio_close_dir(s: [*c][*c]AVIODirContext) c_int;
pub extern fn avio_free_directory_entry(entry: [*c][*c]AVIODirEntry) void;
pub extern fn avio_alloc_context(buffer: [*c]u8, buffer_size: c_int, write_flag: c_int, @"opaque": ?*c_void, read_packet: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int, write_packet: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int, seek: ?fn (?*c_void, i64, c_int) callconv(.C) i64) [*c]AVIOContext;
pub extern fn avio_context_free(s: [*c][*c]AVIOContext) void;
pub extern fn avio_w8(s: [*c]AVIOContext, b: c_int) void;
pub extern fn avio_write(s: [*c]AVIOContext, buf: [*c]const u8, size: c_int) void;
pub extern fn avio_wl64(s: [*c]AVIOContext, val: u64) void;
pub extern fn avio_wb64(s: [*c]AVIOContext, val: u64) void;
pub extern fn avio_wl32(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_wb32(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_wl24(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_wb24(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_wl16(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_wb16(s: [*c]AVIOContext, val: c_uint) void;
pub extern fn avio_put_str(s: [*c]AVIOContext, str: [*c]const u8) c_int;
pub extern fn avio_put_str16le(s: [*c]AVIOContext, str: [*c]const u8) c_int;
pub extern fn avio_put_str16be(s: [*c]AVIOContext, str: [*c]const u8) c_int;
pub extern fn avio_write_marker(s: [*c]AVIOContext, time: i64, type: enum_AVIODataMarkerType) void;
pub extern fn avio_seek(s: [*c]AVIOContext, offset: i64, whence: c_int) i64;
pub extern fn avio_skip(s: [*c]AVIOContext, offset: i64) i64;
pub fn avio_tell(arg_s: [*c]AVIOContext) callconv(.C) i64 {
    var s = arg_s;
    return avio_seek(s, @bitCast(i64, @as(c_longlong, @as(c_int, 0))), @as(c_int, 1));
}
pub extern fn avio_size(s: [*c]AVIOContext) i64;
pub extern fn avio_feof(s: [*c]AVIOContext) c_int;
pub extern fn avio_printf(s: [*c]AVIOContext, fmt: [*c]const u8, ...) c_int;
pub extern fn avio_print_string_array(s: [*c]AVIOContext, strings: [*c][*c]const u8) void;
pub extern fn avio_flush(s: [*c]AVIOContext) void;
pub extern fn avio_read(s: [*c]AVIOContext, buf: [*c]u8, size: c_int) c_int;
pub extern fn avio_read_partial(s: [*c]AVIOContext, buf: [*c]u8, size: c_int) c_int;
pub extern fn avio_r8(s: [*c]AVIOContext) c_int;
pub extern fn avio_rl16(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rl24(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rl32(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rl64(s: [*c]AVIOContext) u64;
pub extern fn avio_rb16(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rb24(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rb32(s: [*c]AVIOContext) c_uint;
pub extern fn avio_rb64(s: [*c]AVIOContext) u64;
pub extern fn avio_get_str(pb: [*c]AVIOContext, maxlen: c_int, buf: [*c]u8, buflen: c_int) c_int;
pub extern fn avio_get_str16le(pb: [*c]AVIOContext, maxlen: c_int, buf: [*c]u8, buflen: c_int) c_int;
pub extern fn avio_get_str16be(pb: [*c]AVIOContext, maxlen: c_int, buf: [*c]u8, buflen: c_int) c_int;
pub extern fn avio_open(s: [*c][*c]AVIOContext, url: [*c]const u8, flags: c_int) c_int;
pub extern fn avio_open2(s: [*c][*c]AVIOContext, url: [*c]const u8, flags: c_int, int_cb: [*c]const AVIOInterruptCB, options: [*c]?*AVDictionary) c_int;
pub extern fn avio_close(s: [*c]AVIOContext) c_int;
pub extern fn avio_closep(s: [*c][*c]AVIOContext) c_int;
pub extern fn avio_open_dyn_buf(s: [*c][*c]AVIOContext) c_int;
pub extern fn avio_get_dyn_buf(s: [*c]AVIOContext, pbuffer: [*c][*c]u8) c_int;
pub extern fn avio_close_dyn_buf(s: [*c]AVIOContext, pbuffer: [*c][*c]u8) c_int;
pub extern fn avio_enum_protocols(@"opaque": [*c]?*c_void, output: c_int) [*c]const u8;
pub extern fn avio_protocol_get_class(name: [*c]const u8) [*c]const AVClass;
pub extern fn avio_pause(h: [*c]AVIOContext, pause: c_int) c_int;
pub extern fn avio_seek_time(h: [*c]AVIOContext, stream_index: c_int, timestamp: i64, flags: c_int) i64;
pub extern fn avio_read_to_bprint(h: [*c]AVIOContext, pb: ?*struct_AVBPrint, max_size: usize) c_int;
pub extern fn avio_accept(s: [*c]AVIOContext, c: [*c][*c]AVIOContext) c_int;
pub extern fn avio_handshake(c: [*c]AVIOContext) c_int;
pub const struct_AVCodecTag = opaque {};
pub const struct_AVProbeData = extern struct {
    filename: [*c]const u8,
    buf: [*c]u8,
    buf_size: c_int,
    mime_type: [*c]const u8,
};
pub const AVProbeData = struct_AVProbeData;
pub const struct_AVDeviceInfoList = opaque {};
pub const struct_AVDeviceCapabilitiesQuery = opaque {};
pub const struct_AVInputFormat = extern struct {
    name: [*c]const u8,
    long_name: [*c]const u8,
    flags: c_int,
    extensions: [*c]const u8,
    codec_tag: [*c]const ?*const struct_AVCodecTag,
    priv_class: [*c]const AVClass,
    mime_type: [*c]const u8,
    next: [*c]struct_AVInputFormat,
    raw_codec_id: c_int,
    priv_data_size: c_int,
    read_probe: ?fn ([*c]const AVProbeData) callconv(.C) c_int,
    read_header: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    read_packet: ?fn ([*c]struct_AVFormatContext, [*c]AVPacket) callconv(.C) c_int,
    read_close: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    read_seek: ?fn ([*c]struct_AVFormatContext, c_int, i64, c_int) callconv(.C) c_int,
    read_timestamp: ?fn ([*c]struct_AVFormatContext, c_int, [*c]i64, i64) callconv(.C) i64,
    read_play: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    read_pause: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    read_seek2: ?fn ([*c]struct_AVFormatContext, c_int, i64, i64, i64, c_int) callconv(.C) c_int,
    get_device_list: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceInfoList) callconv(.C) c_int,
    create_device_capabilities: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceCapabilitiesQuery) callconv(.C) c_int,
    free_device_capabilities: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceCapabilitiesQuery) callconv(.C) c_int,
};
pub const struct_AVOutputFormat = extern struct {
    name: [*c]const u8,
    long_name: [*c]const u8,
    mime_type: [*c]const u8,
    extensions: [*c]const u8,
    audio_codec: enum_AVCodecID,
    video_codec: enum_AVCodecID,
    subtitle_codec: enum_AVCodecID,
    flags: c_int,
    codec_tag: [*c]const ?*const struct_AVCodecTag,
    priv_class: [*c]const AVClass,
    next: [*c]struct_AVOutputFormat,
    priv_data_size: c_int,
    write_header: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    write_packet: ?fn ([*c]struct_AVFormatContext, [*c]AVPacket) callconv(.C) c_int,
    write_trailer: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    interleave_packet: ?fn ([*c]struct_AVFormatContext, [*c]AVPacket, [*c]AVPacket, c_int) callconv(.C) c_int,
    query_codec: ?fn (enum_AVCodecID, c_int) callconv(.C) c_int,
    get_output_timestamp: ?fn ([*c]struct_AVFormatContext, c_int, [*c]i64, [*c]i64) callconv(.C) void,
    control_message: ?fn ([*c]struct_AVFormatContext, c_int, ?*c_void, usize) callconv(.C) c_int,
    write_uncoded_frame: ?fn ([*c]struct_AVFormatContext, c_int, [*c][*c]AVFrame, c_uint) callconv(.C) c_int,
    get_device_list: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceInfoList) callconv(.C) c_int,
    create_device_capabilities: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceCapabilitiesQuery) callconv(.C) c_int,
    free_device_capabilities: ?fn ([*c]struct_AVFormatContext, ?*struct_AVDeviceCapabilitiesQuery) callconv(.C) c_int,
    data_codec: enum_AVCodecID,
    init: ?fn ([*c]struct_AVFormatContext) callconv(.C) c_int,
    deinit: ?fn ([*c]struct_AVFormatContext) callconv(.C) void,
    check_bitstream: ?fn ([*c]struct_AVFormatContext, [*c]const AVPacket) callconv(.C) c_int,
};
pub const enum_AVStreamParseType = extern enum(c_int) {
    AVSTREAM_PARSE_NONE,
    AVSTREAM_PARSE_FULL,
    AVSTREAM_PARSE_HEADERS,
    AVSTREAM_PARSE_TIMESTAMPS,
    AVSTREAM_PARSE_FULL_ONCE,
    AVSTREAM_PARSE_FULL_RAW,
    _,
};
pub const AVSTREAM_PARSE_NONE = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_NONE);
pub const AVSTREAM_PARSE_FULL = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_FULL);
pub const AVSTREAM_PARSE_HEADERS = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_HEADERS);
pub const AVSTREAM_PARSE_TIMESTAMPS = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_TIMESTAMPS);
pub const AVSTREAM_PARSE_FULL_ONCE = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_FULL_ONCE);
pub const AVSTREAM_PARSE_FULL_RAW = @enumToInt(enum_AVStreamParseType.AVSTREAM_PARSE_FULL_RAW);
pub const struct_AVStreamInternal = opaque {};
pub const AVStreamInternal = struct_AVStreamInternal;
pub const struct_AVStream = extern struct {
    index: c_int,
    id: c_int,
    codec: [*c]AVCodecContext,
    priv_data: ?*c_void,
    time_base: AVRational,
    start_time: i64,
    duration: i64,
    nb_frames: i64,
    disposition: c_int,
    discard: enum_AVDiscard,
    sample_aspect_ratio: AVRational,
    metadata: ?*AVDictionary,
    avg_frame_rate: AVRational,
    attached_pic: AVPacket,
    side_data: [*c]AVPacketSideData,
    nb_side_data: c_int,
    event_flags: c_int,
    r_frame_rate: AVRational,
    recommended_encoder_configuration: [*c]u8,
    codecpar: [*c]AVCodecParameters,
    unused: ?*c_void,
    pts_wrap_bits: c_int,
    first_dts: i64,
    cur_dts: i64,
    last_IP_pts: i64,
    last_IP_duration: c_int,
    probe_packets: c_int,
    codec_info_nb_frames: c_int,
    need_parsing: enum_AVStreamParseType,
    parser: [*c]struct_AVCodecParserContext,
    unused7: ?*c_void,
    unused6: AVProbeData,
    unused5: [17]i64,
    unused2: ?*c_void,
    unused3: c_int,
    unused4: c_uint,
    stream_identifier: c_int,
    unused8: c_int,
    unused9: c_int,
    unused10: c_int,
    internal: ?*AVStreamInternal,
};
pub const AVStream = struct_AVStream;
pub const struct_AVProgram = extern struct {
    id: c_int,
    flags: c_int,
    discard: enum_AVDiscard,
    stream_index: [*c]c_uint,
    nb_stream_indexes: c_uint,
    metadata: ?*AVDictionary,
    program_num: c_int,
    pmt_pid: c_int,
    pcr_pid: c_int,
    pmt_version: c_int,
    start_time: i64,
    end_time: i64,
    pts_wrap_reference: i64,
    pts_wrap_behavior: c_int,
};
pub const AVProgram = struct_AVProgram;
pub const struct_AVChapter = extern struct {
    id: c_int,
    time_base: AVRational,
    start: i64,
    end: i64,
    metadata: ?*AVDictionary,
};
pub const AVChapter = struct_AVChapter;
pub const enum_AVDurationEstimationMethod = extern enum(c_int) {
    AVFMT_DURATION_FROM_PTS,
    AVFMT_DURATION_FROM_STREAM,
    AVFMT_DURATION_FROM_BITRATE,
    _,
};
pub const AVFMT_DURATION_FROM_PTS = @enumToInt(enum_AVDurationEstimationMethod.AVFMT_DURATION_FROM_PTS);
pub const AVFMT_DURATION_FROM_STREAM = @enumToInt(enum_AVDurationEstimationMethod.AVFMT_DURATION_FROM_STREAM);
pub const AVFMT_DURATION_FROM_BITRATE = @enumToInt(enum_AVDurationEstimationMethod.AVFMT_DURATION_FROM_BITRATE);
pub const struct_AVFormatInternal = opaque {};
pub const AVFormatInternal = struct_AVFormatInternal;
pub const av_format_control_message = ?fn ([*c]struct_AVFormatContext, c_int, ?*c_void, usize) callconv(.C) c_int;
pub const struct_AVFormatContext = extern struct {
    av_class: [*c]const AVClass,
    iformat: [*c]struct_AVInputFormat,
    oformat: [*c]struct_AVOutputFormat,
    priv_data: ?*c_void,
    pb: [*c]AVIOContext,
    ctx_flags: c_int,
    nb_streams: c_uint,
    streams: [*c][*c]AVStream,
    filename: [1024]u8,
    url: [*c]u8,
    start_time: i64,
    duration: i64,
    bit_rate: i64,
    packet_size: c_uint,
    max_delay: c_int,
    flags: c_int,
    probesize: i64,
    max_analyze_duration: i64,
    key: [*c]const u8,
    keylen: c_int,
    nb_programs: c_uint,
    programs: [*c][*c]AVProgram,
    video_codec_id: enum_AVCodecID,
    audio_codec_id: enum_AVCodecID,
    subtitle_codec_id: enum_AVCodecID,
    max_index_size: c_uint,
    max_picture_buffer: c_uint,
    nb_chapters: c_uint,
    chapters: [*c][*c]AVChapter,
    metadata: ?*AVDictionary,
    start_time_realtime: i64,
    fps_probe_size: c_int,
    error_recognition: c_int,
    interrupt_callback: AVIOInterruptCB,
    debug: c_int,
    max_interleave_delta: i64,
    strict_std_compliance: c_int,
    event_flags: c_int,
    max_ts_probe: c_int,
    avoid_negative_ts: c_int,
    ts_id: c_int,
    audio_preload: c_int,
    max_chunk_duration: c_int,
    max_chunk_size: c_int,
    use_wallclock_as_timestamps: c_int,
    avio_flags: c_int,
    duration_estimation_method: enum_AVDurationEstimationMethod,
    skip_initial_bytes: i64,
    correct_ts_overflow: c_uint,
    seek2any: c_int,
    flush_packets: c_int,
    probe_score: c_int,
    format_probesize: c_int,
    codec_whitelist: [*c]u8,
    format_whitelist: [*c]u8,
    internal: ?*AVFormatInternal,
    io_repositioned: c_int,
    video_codec: [*c]AVCodec,
    audio_codec: [*c]AVCodec,
    subtitle_codec: [*c]AVCodec,
    data_codec: [*c]AVCodec,
    metadata_header_padding: c_int,
    @"opaque": ?*c_void,
    control_message_cb: av_format_control_message,
    output_ts_offset: i64,
    dump_separator: [*c]u8,
    data_codec_id: enum_AVCodecID,
    open_cb: ?fn ([*c]struct_AVFormatContext, [*c][*c]AVIOContext, [*c]const u8, c_int, [*c]const AVIOInterruptCB, [*c]?*AVDictionary) callconv(.C) c_int,
    protocol_whitelist: [*c]u8,
    io_open: ?fn ([*c]struct_AVFormatContext, [*c][*c]AVIOContext, [*c]const u8, c_int, [*c]?*AVDictionary) callconv(.C) c_int,
    io_close: ?fn ([*c]struct_AVFormatContext, [*c]AVIOContext) callconv(.C) void,
    protocol_blacklist: [*c]u8,
    max_streams: c_int,
    skip_estimate_duration_from_pts: c_int,
    max_probe_packets: c_int,
};
pub extern fn av_get_packet(s: [*c]AVIOContext, pkt: [*c]AVPacket, size: c_int) c_int;
pub extern fn av_append_packet(s: [*c]AVIOContext, pkt: [*c]AVPacket, size: c_int) c_int;
pub const AVOutputFormat = struct_AVOutputFormat;
pub const AVInputFormat = struct_AVInputFormat; // /Users/j/src/ffmpeg/libavformat/avformat.h:815:9: warning: struct demoted to opaque type - has bitfield
pub const struct_AVIndexEntry = opaque {};
pub const AVIndexEntry = struct_AVIndexEntry;
pub extern fn av_stream_get_r_frame_rate(s: [*c]const AVStream) AVRational;
pub extern fn av_stream_set_r_frame_rate(s: [*c]AVStream, r: AVRational) void;
pub extern fn av_stream_get_recommended_encoder_configuration(s: [*c]const AVStream) [*c]u8;
pub extern fn av_stream_set_recommended_encoder_configuration(s: [*c]AVStream, configuration: [*c]u8) void;
pub extern fn av_stream_get_parser(s: [*c]const AVStream) [*c]struct_AVCodecParserContext;
pub extern fn av_stream_get_end_pts(st: [*c]const AVStream) i64;
pub const AVOpenCallback = ?fn ([*c]struct_AVFormatContext, [*c][*c]AVIOContext, [*c]const u8, c_int, [*c]const AVIOInterruptCB, [*c]?*AVDictionary) callconv(.C) c_int;
pub const AVFormatContext = struct_AVFormatContext;
pub extern fn av_format_get_probe_score(s: [*c]const AVFormatContext) c_int;
pub extern fn av_format_get_video_codec(s: [*c]const AVFormatContext) [*c]AVCodec;
pub extern fn av_format_set_video_codec(s: [*c]AVFormatContext, c: [*c]AVCodec) void;
pub extern fn av_format_get_audio_codec(s: [*c]const AVFormatContext) [*c]AVCodec;
pub extern fn av_format_set_audio_codec(s: [*c]AVFormatContext, c: [*c]AVCodec) void;
pub extern fn av_format_get_subtitle_codec(s: [*c]const AVFormatContext) [*c]AVCodec;
pub extern fn av_format_set_subtitle_codec(s: [*c]AVFormatContext, c: [*c]AVCodec) void;
pub extern fn av_format_get_data_codec(s: [*c]const AVFormatContext) [*c]AVCodec;
pub extern fn av_format_set_data_codec(s: [*c]AVFormatContext, c: [*c]AVCodec) void;
pub extern fn av_format_get_metadata_header_padding(s: [*c]const AVFormatContext) c_int;
pub extern fn av_format_set_metadata_header_padding(s: [*c]AVFormatContext, c: c_int) void;
pub extern fn av_format_get_opaque(s: [*c]const AVFormatContext) ?*c_void;
pub extern fn av_format_set_opaque(s: [*c]AVFormatContext, @"opaque": ?*c_void) void;
pub extern fn av_format_get_control_message_cb(s: [*c]const AVFormatContext) av_format_control_message;
pub extern fn av_format_set_control_message_cb(s: [*c]AVFormatContext, callback: av_format_control_message) void;
pub extern fn av_format_get_open_cb(s: [*c]const AVFormatContext) AVOpenCallback;
pub extern fn av_format_set_open_cb(s: [*c]AVFormatContext, callback: AVOpenCallback) void;
pub extern fn av_format_inject_global_side_data(s: [*c]AVFormatContext) void;
pub extern fn av_fmt_ctx_get_duration_estimation_method(ctx: [*c]const AVFormatContext) enum_AVDurationEstimationMethod;
pub extern fn avformat_version() c_uint;
pub extern fn avformat_configuration() [*c]const u8;
pub extern fn avformat_license() [*c]const u8;
pub extern fn av_register_all() void;
pub extern fn av_register_input_format(format: [*c]AVInputFormat) void;
pub extern fn av_register_output_format(format: [*c]AVOutputFormat) void;
pub extern fn avformat_network_init() c_int;
pub extern fn avformat_network_deinit() c_int;
pub extern fn av_iformat_next(f: [*c]const AVInputFormat) [*c]AVInputFormat;
pub extern fn av_oformat_next(f: [*c]const AVOutputFormat) [*c]AVOutputFormat;
pub extern fn av_muxer_iterate(@"opaque": [*c]?*c_void) [*c]const AVOutputFormat;
pub extern fn av_demuxer_iterate(@"opaque": [*c]?*c_void) [*c]const AVInputFormat;
pub extern fn avformat_alloc_context() [*c]AVFormatContext;
pub extern fn avformat_free_context(s: [*c]AVFormatContext) void;
pub extern fn avformat_get_class() [*c]const AVClass;
pub extern fn avformat_new_stream(s: [*c]AVFormatContext, c: [*c]const AVCodec) [*c]AVStream;
pub extern fn av_stream_add_side_data(st: [*c]AVStream, type: enum_AVPacketSideDataType, data: [*c]u8, size: usize) c_int;
pub extern fn av_stream_new_side_data(stream: [*c]AVStream, type: enum_AVPacketSideDataType, size: c_int) [*c]u8;
pub extern fn av_stream_get_side_data(stream: [*c]const AVStream, type: enum_AVPacketSideDataType, size: [*c]c_int) [*c]u8;
pub extern fn av_new_program(s: [*c]AVFormatContext, id: c_int) [*c]AVProgram;
pub extern fn avformat_alloc_output_context2(ctx: [*c][*c]AVFormatContext, oformat: [*c]AVOutputFormat, format_name: [*c]const u8, filename: [*c]const u8) c_int;
pub extern fn av_find_input_format(short_name: [*c]const u8) [*c]AVInputFormat;
pub extern fn av_probe_input_format(pd: [*c]AVProbeData, is_opened: c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_format2(pd: [*c]AVProbeData, is_opened: c_int, score_max: [*c]c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_format3(pd: [*c]AVProbeData, is_opened: c_int, score_ret: [*c]c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_buffer2(pb: [*c]AVIOContext, fmt: [*c][*c]AVInputFormat, url: [*c]const u8, logctx: ?*c_void, offset: c_uint, max_probe_size: c_uint) c_int;
pub extern fn av_probe_input_buffer(pb: [*c]AVIOContext, fmt: [*c][*c]AVInputFormat, url: [*c]const u8, logctx: ?*c_void, offset: c_uint, max_probe_size: c_uint) c_int;
pub extern fn avformat_open_input(ps: [*c][*c]AVFormatContext, url: [*c]const u8, fmt: [*c]AVInputFormat, options: [*c]?*AVDictionary) c_int;
pub extern fn av_demuxer_open(ic: [*c]AVFormatContext) c_int;
pub extern fn avformat_find_stream_info(ic: [*c]AVFormatContext, options: [*c]?*AVDictionary) c_int;
pub extern fn av_find_program_from_stream(ic: [*c]AVFormatContext, last: [*c]AVProgram, s: c_int) [*c]AVProgram;
pub extern fn av_program_add_stream_index(ac: [*c]AVFormatContext, progid: c_int, idx: c_uint) void;
pub extern fn av_find_best_stream(ic: [*c]AVFormatContext, type: enum_AVMediaType, wanted_stream_nb: c_int, related_stream: c_int, decoder_ret: [*c][*c]AVCodec, flags: c_int) c_int;
pub extern fn av_read_frame(s: [*c]AVFormatContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_seek_frame(s: [*c]AVFormatContext, stream_index: c_int, timestamp: i64, flags: c_int) c_int;
pub extern fn avformat_seek_file(s: [*c]AVFormatContext, stream_index: c_int, min_ts: i64, ts: i64, max_ts: i64, flags: c_int) c_int;
pub extern fn avformat_flush(s: [*c]AVFormatContext) c_int;
pub extern fn av_read_play(s: [*c]AVFormatContext) c_int;
pub extern fn av_read_pause(s: [*c]AVFormatContext) c_int;
pub extern fn avformat_close_input(s: [*c][*c]AVFormatContext) void;
pub extern fn avformat_write_header(s: [*c]AVFormatContext, options: [*c]?*AVDictionary) c_int;
pub extern fn avformat_init_output(s: [*c]AVFormatContext, options: [*c]?*AVDictionary) c_int;
pub extern fn av_write_frame(s: [*c]AVFormatContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_interleaved_write_frame(s: [*c]AVFormatContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_write_uncoded_frame(s: [*c]AVFormatContext, stream_index: c_int, frame: [*c]AVFrame) c_int;
pub extern fn av_interleaved_write_uncoded_frame(s: [*c]AVFormatContext, stream_index: c_int, frame: [*c]AVFrame) c_int;
pub extern fn av_write_uncoded_frame_query(s: [*c]AVFormatContext, stream_index: c_int) c_int;
pub extern fn av_write_trailer(s: [*c]AVFormatContext) c_int;
pub extern fn av_guess_format(short_name: [*c]const u8, filename: [*c]const u8, mime_type: [*c]const u8) [*c]AVOutputFormat;
pub extern fn av_guess_codec(fmt: [*c]AVOutputFormat, short_name: [*c]const u8, filename: [*c]const u8, mime_type: [*c]const u8, type: enum_AVMediaType) enum_AVCodecID;
pub extern fn av_get_output_timestamp(s: [*c]struct_AVFormatContext, stream: c_int, dts: [*c]i64, wall: [*c]i64) c_int;
pub extern fn av_hex_dump(f: [*c]FILE, buf: [*c]const u8, size: c_int) void;
pub extern fn av_hex_dump_log(avcl: ?*c_void, level: c_int, buf: [*c]const u8, size: c_int) void;
pub extern fn av_pkt_dump2(f: [*c]FILE, pkt: [*c]const AVPacket, dump_payload: c_int, st: [*c]const AVStream) void;
pub extern fn av_pkt_dump_log2(avcl: ?*c_void, level: c_int, pkt: [*c]const AVPacket, dump_payload: c_int, st: [*c]const AVStream) void;
pub extern fn av_codec_get_id(tags: [*c]const ?*const struct_AVCodecTag, tag: c_uint) enum_AVCodecID;
pub extern fn av_codec_get_tag(tags: [*c]const ?*const struct_AVCodecTag, id: enum_AVCodecID) c_uint;
pub extern fn av_codec_get_tag2(tags: [*c]const ?*const struct_AVCodecTag, id: enum_AVCodecID, tag: [*c]c_uint) c_int;
pub extern fn av_find_default_stream_index(s: [*c]AVFormatContext) c_int;
pub extern fn av_index_search_timestamp(st: [*c]AVStream, timestamp: i64, flags: c_int) c_int;
pub extern fn av_add_index_entry(st: [*c]AVStream, pos: i64, timestamp: i64, size: c_int, distance: c_int, flags: c_int) c_int;
pub extern fn av_url_split(proto: [*c]u8, proto_size: c_int, authorization: [*c]u8, authorization_size: c_int, hostname: [*c]u8, hostname_size: c_int, port_ptr: [*c]c_int, path: [*c]u8, path_size: c_int, url: [*c]const u8) void;
pub extern fn av_dump_format(ic: [*c]AVFormatContext, index: c_int, url: [*c]const u8, is_output: c_int) void;
pub extern fn av_get_frame_filename2(buf: [*c]u8, buf_size: c_int, path: [*c]const u8, number: c_int, flags: c_int) c_int;
pub extern fn av_get_frame_filename(buf: [*c]u8, buf_size: c_int, path: [*c]const u8, number: c_int) c_int;
pub extern fn av_filename_number_test(filename: [*c]const u8) c_int;
pub extern fn av_sdp_create(ac: [*c][*c]AVFormatContext, n_files: c_int, buf: [*c]u8, size: c_int) c_int;
pub extern fn av_match_ext(filename: [*c]const u8, extensions: [*c]const u8) c_int;
pub extern fn avformat_query_codec(ofmt: [*c]const AVOutputFormat, codec_id: enum_AVCodecID, std_compliance: c_int) c_int;
pub extern fn avformat_get_riff_video_tags() ?*const struct_AVCodecTag;
pub extern fn avformat_get_riff_audio_tags() ?*const struct_AVCodecTag;
pub extern fn avformat_get_mov_video_tags() ?*const struct_AVCodecTag;
pub extern fn avformat_get_mov_audio_tags() ?*const struct_AVCodecTag;
pub extern fn av_guess_sample_aspect_ratio(format: [*c]AVFormatContext, stream: [*c]AVStream, frame: [*c]AVFrame) AVRational;
pub extern fn av_guess_frame_rate(ctx: [*c]AVFormatContext, stream: [*c]AVStream, frame: [*c]AVFrame) AVRational;
pub extern fn avformat_match_stream_specifier(s: [*c]AVFormatContext, st: [*c]AVStream, spec: [*c]const u8) c_int;
pub extern fn avformat_queue_attached_pictures(s: [*c]AVFormatContext) c_int;
pub extern fn av_apply_bitstream_filters(codec: [*c]AVCodecContext, pkt: [*c]AVPacket, bsfc: [*c]AVBitStreamFilterContext) c_int;
pub const enum_AVTimebaseSource = extern enum(c_int) {
    AVFMT_TBCF_AUTO = -1,
    AVFMT_TBCF_DECODER = 0,
    AVFMT_TBCF_DEMUXER = 1,
    AVFMT_TBCF_R_FRAMERATE = 2,
    _,
};
pub const AVFMT_TBCF_AUTO = @enumToInt(enum_AVTimebaseSource.AVFMT_TBCF_AUTO);
pub const AVFMT_TBCF_DECODER = @enumToInt(enum_AVTimebaseSource.AVFMT_TBCF_DECODER);
pub const AVFMT_TBCF_DEMUXER = @enumToInt(enum_AVTimebaseSource.AVFMT_TBCF_DEMUXER);
pub const AVFMT_TBCF_R_FRAMERATE = @enumToInt(enum_AVTimebaseSource.AVFMT_TBCF_R_FRAMERATE);
pub extern fn avformat_transfer_internal_stream_timing_info(ofmt: [*c]const AVOutputFormat, ost: [*c]AVStream, ist: [*c]const AVStream, copy_tb: enum_AVTimebaseSource) c_int;
pub extern fn av_stream_get_codec_timebase(st: [*c]const AVStream) AVRational;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):64:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):68:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):75:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):79:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):83:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):98:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):160:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):188:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):226:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):230:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):266:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):270:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:116:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:118:9
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:202:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:222:9
pub const __swift_unavailable = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:288:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:322:10
pub const __unreachable_ok_push = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:348:10
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:379:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:399:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:403:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:407:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:411:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:429:9
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:612:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:613:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:614:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:615:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:616:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:618:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:619:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:620:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:621:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:622:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:624:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:625:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token .Nl"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:635:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:698:9
pub const __compiler_barrier = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:812:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:836:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:838:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:840:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/sys/cdefs.h:842:9
pub const errno = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/errno.h:81:9
pub const INT64_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /opt/zig/lib/zig/libc/include/any-macos-any/stdint.h:65:9
pub const UINT32_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /opt/zig/lib/zig/libc/include/any-macos-any/stdint.h:69:9
pub const UINT64_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /opt/zig/lib/zig/libc/include/any-macos-any/stdint.h:70:9
pub const INTMAX_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /opt/zig/lib/zig/libc/include/any-macos-any/stdint.h:73:9
pub const UINTMAX_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /opt/zig/lib/zig/libc/include/any-macos-any/stdint.h:74:9
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2919:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2920:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2934:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2938:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2953:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2965:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2969:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2971:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2975:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2977:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2987:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2991:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2993:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:2999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3005:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3009:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3011:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3015:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3033:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3035:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3039:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3041:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3044:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3046:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3050:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3052:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3057:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3061:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3062:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3064:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3068:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3070:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3076:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3081:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3086:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3088:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3094:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3098:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3100:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3105:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3109:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3110:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3112:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3118:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3122:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3124:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3128:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3130:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3134:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3136:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3140:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3142:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3146:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3148:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3152:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3154:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3158:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3165:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3169:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3171:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3176:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3180:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3181:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3183:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3189:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3193:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3195:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3200:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3204:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3207:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3211:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3213:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3217:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3219:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3224:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3228:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3229:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3231:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3235:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3237:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3241:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3243:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3247:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3249:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3253:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3255:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3259:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3261:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3265:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3267:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3271:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3272:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3273:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3278:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3282:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3284:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3289:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3296:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3300:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3302:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3306:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3313:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3317:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3320:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3324:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3326:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3332:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3337:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3341:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3342:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3344:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3348:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3350:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3354:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3356:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3360:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3362:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3368:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3372:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3374:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3378:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3379:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3380:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3382:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3383:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3386:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3390:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3392:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3397:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3401:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3402:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3404:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3410:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3416:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3421:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3425:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3426:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3428:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3432:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3434:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3438:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3440:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3445:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3449:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3451:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3455:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3457:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3461:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3463:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3467:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3469:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3473:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3475:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3479:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3480:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3481:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3483:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3484:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3486:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3490:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3492:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3497:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3501:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3502:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3504:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3508:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3510:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3514:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3516:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3521:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3525:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3526:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3528:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3532:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3534:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3538:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3540:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3545:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3549:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3550:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3552:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3556:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3558:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3562:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3564:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3568:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3570:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3574:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3575:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3576:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3581:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3585:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3587:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3592:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3596:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3597:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3599:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3603:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3605:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3609:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3611:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3616:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3620:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3621:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3623:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3627:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3629:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3633:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3635:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3640:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3644:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3645:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3647:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3651:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3653:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3657:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3659:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3663:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3664:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3665:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3666:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3667:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3668:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3670:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3674:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3676:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3681:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3685:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3686:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3688:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3692:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3694:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3698:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3700:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3705:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3709:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3710:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3712:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3716:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3718:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3722:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3724:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3729:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3733:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3734:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3736:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3740:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3742:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3746:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3747:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3748:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3750:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3751:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3753:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3757:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3759:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3764:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3768:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3769:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3771:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3775:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3777:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3781:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3783:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3788:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3792:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3793:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3795:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3799:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3801:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3805:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3807:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3812:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3816:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3817:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3818:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3820:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3824:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3825:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3826:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3827:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3829:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3833:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3834:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3835:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3837:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3841:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3843:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3848:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3852:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3853:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3855:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3859:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3861:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3865:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3867:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3872:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3877:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3879:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3883:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3885:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3889:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3891:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3896:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3900:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3902:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3906:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3908:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3912:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3914:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3918:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3920:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3924:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3926:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3930:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3936:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3938:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3942:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3944:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3955:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3959:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3960:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3961:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3966:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3970:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3972:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3976:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3977:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3979:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3983:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3985:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3989:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3991:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:3996:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4001:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4003:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4007:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4009:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4013:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4015:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4020:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4025:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4026:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4033:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4034:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4036:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4042:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4048:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4053:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4057:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4058:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4066:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4072:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4077:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4081:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4082:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4083:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4084:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4087:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4091:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4093:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4098:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4102:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4103:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4105:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4109:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4111:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4115:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4117:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4122:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4126:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4127:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4129:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4133:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4135:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4139:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4141:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4146:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4150:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4152:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4156:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4157:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4158:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4163:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4167:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4169:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4173:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4175:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4179:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4180:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4182:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4186:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4188:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4192:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4194:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4199:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4203:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4204:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4208:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4212:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4214:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4218:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4219:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4221:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4225:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4233:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4238:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4243:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4245:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4247:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4251:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4252:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4254:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4258:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4260:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4264:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4266:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4271:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4281:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4287:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4291:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4293:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4298:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4302:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4303:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4305:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4309:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4315:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4317:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4322:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4326:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4327:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4328:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4332:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4336:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4338:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4342:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4344:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4348:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4349:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4350:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4353:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4357:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4364:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4365:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4368:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4372:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4373:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4374:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4383:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4394:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4398:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4405:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4406:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4407:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4409:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4410:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4412:21
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4442:13
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4443:13
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4444:13
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4445:13
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4446:13
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4448:13
pub const __API_AVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4451:14
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4453:13
pub const __API_A = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4457:17
pub const __API_AVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4466:13
pub const __API_AVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4467:13
pub const __API_AVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4468:13
pub const __API_AVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4469:13
pub const __API_AVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4470:13
pub const __API_AVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4471:13
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4472:13
pub const __API_APPLY_TO = @compileError("unable to translate C expr: expected Identifier instead got: Comma"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4474:13
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token .Hash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4476:13
pub const __API_A_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4478:13
pub const __API_AVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4481:13
pub const __API_AVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4482:13
pub const __API_AVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4483:13
pub const __API_AVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4484:13
pub const __API_AVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4485:13
pub const __API_AVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4486:13
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4487:13
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4490:13
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4491:13
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4492:13
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4493:13
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4494:13
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4496:13
pub const __API_DEPRECATED_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4499:14
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4501:13
pub const __API_D = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4505:17
pub const __API_DEPRECATED_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4514:13
pub const __API_DEPRECATED_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4515:13
pub const __API_DEPRECATED_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4516:13
pub const __API_DEPRECATED_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4517:13
pub const __API_DEPRECATED_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4518:13
pub const __API_DEPRECATED_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4519:13
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4520:13
pub const __API_D_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4522:13
pub const __API_DEPRECATED_BEGIN_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4525:13
pub const __API_DEPRECATED_BEGIN_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4526:13
pub const __API_DEPRECATED_BEGIN_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4527:13
pub const __API_DEPRECATED_BEGIN_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4528:13
pub const __API_DEPRECATED_BEGIN_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4529:13
pub const __API_DEPRECATED_BEGIN_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4530:13
pub const __API_DEPRECATED_BEGIN_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4531:13
pub const __API_R = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4534:17
pub const __API_DEPRECATED_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4540:13
pub const __API_DEPRECATED_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4541:13
pub const __API_DEPRECATED_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4542:13
pub const __API_DEPRECATED_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4543:13
pub const __API_DEPRECATED_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4544:13
pub const __API_DEPRECATED_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4545:13
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4546:13
pub const __API_R_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4549:17
pub const __API_DEPRECATED_BEGIN_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4555:13
pub const __API_DEPRECATED_BEGIN_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4556:13
pub const __API_DEPRECATED_BEGIN_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4557:13
pub const __API_DEPRECATED_BEGIN_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4558:13
pub const __API_DEPRECATED_BEGIN_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4559:13
pub const __API_DEPRECATED_BEGIN_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4560:13
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4561:13
pub const __API_U = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4586:17
pub const __API_UNAVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4595:13
pub const __API_UNAVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4596:13
pub const __API_UNAVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4597:13
pub const __API_UNAVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4598:13
pub const __API_UNAVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4599:13
pub const __API_UNAVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4600:13
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4601:13
pub const __API_U_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4603:13
pub const __API_UNAVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4606:13
pub const __API_UNAVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4607:13
pub const __API_UNAVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4608:13
pub const __API_UNAVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4609:13
pub const __API_UNAVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4610:13
pub const __API_UNAVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4611:13
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4612:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4661:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/AvailabilityInternal.h:4669:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:295:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:296:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate C expr: unexpected token .HashHash"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:298:17
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:322:13
pub const __OS_EXTENSION_UNAVAILABLE = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:350:9
pub const __OSX_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:358:13
pub const __OSX_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:359:13
pub const __IOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:381:13
pub const __IOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:382:13
pub const __TVOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:408:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:409:13
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:435:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:436:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:504:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:506:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:525:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:526:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:528:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:531:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:542:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:544:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:598:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/Availability.h:602:11
pub const HUGE_VAL = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:57:15
pub const HUGE_VALF = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:58:15
pub const HUGE_VALL = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:59:15
pub const math_errhandling = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:110:9
pub const fpclassify = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:126:9
pub const isnormal = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:149:9
pub const isfinite = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:154:9
pub const isinf = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:159:9
pub const isnan = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:164:9
pub const signbit = @compileError("unable to translate C expr: expected ')' instead got: Keyword_double"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/math.h:169:9
pub const __sgetc = @compileError("TODO unary inc/dec expr"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdio.h:258:9
pub const __sclearerr = @compileError("unable to translate C expr: expected ')'"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/stdio.h:282:9
pub const SIG_DFL = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: unexpected token .RParen"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/signal.h:134:9
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /opt/zig/lib/zig/libc/include/x86_64-macos-gnu/libkern/i386/_OSByteOrder.h:34:17
pub const NTOHL = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:143:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:144:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:145:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:146:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:147:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /opt/zig/lib/zig/libc/include/any-macos-any/sys/_endian.h:148:9
pub const av_always_inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /Users/j/src/ffmpeg/libavutil/attributes.h:45:13
pub const av_extern_inline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /Users/j/src/ffmpeg/libavutil/attributes.h:55:13
pub const av_const = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Users/j/src/ffmpeg/libavutil/attributes.h:82:13
pub const av_uninit = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/j/src/ffmpeg/libavutil/attributes.h:154:13
pub const AV_TOSTRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /Users/j/src/ffmpeg/libavutil/macros.h:37:9
pub const AV_GLUE = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/j/src/ffmpeg/libavutil/macros.h:39:9
pub const AV_PRAGMA = @compileError("unable to translate C expr: unexpected token .Hash"); // /Users/j/src/ffmpeg/libavutil/macros.h:46:9
pub const AV_VERSION_DOT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/j/src/ffmpeg/libavutil/version.h:57:9
pub const FFSWAP = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /Users/j/src/ffmpeg/libavutil/common.h:108:9
pub const GET_UTF8 = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/j/src/ffmpeg/libavutil/common.h:499:9
pub const GET_UTF16 = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/j/src/ffmpeg/libavutil/common.h:524:9
pub const PUT_UTF8 = @compileError("unable to translate C expr: unexpected token .LBrace"); // /Users/j/src/ffmpeg/libavutil/common.h:552:9
pub const PUT_UTF16 = @compileError("unable to translate C expr: unexpected token .LBrace"); // /Users/j/src/ffmpeg/libavutil/common.h:586:9
pub const DECLARE_ALIGNED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Users/j/src/ffmpeg/libavutil/mem.h:117:13
pub const DECLARE_ASM_ALIGNED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Users/j/src/ffmpeg/libavutil/mem.h:118:13
pub const DECLARE_ASM_CONST = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /Users/j/src/ffmpeg/libavutil/mem.h:119:13
pub const av_alloc_size = @compileError("unable to translate C expr: expected ')'"); // /Users/j/src/ffmpeg/libavutil/mem.h:175:13
pub const AV_PIX_FMT_NE = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/j/src/ffmpeg/libavutil/pixfmt.h:369:12
pub const AV_PIX_FMT_0BGR32 = @compileError("unable to translate C expr: unexpected token .Invalid"); // /Users/j/src/ffmpeg/libavutil/pixfmt.h:377:9
pub const __CLOCK_AVAILABILITY = @compileError("unable to translate C expr: unexpected token .Identifier"); // /opt/zig/lib/zig/libc/include/any-macos-any/time.h:148:9
pub const avio_print = @compileError("unable to translate C expr: expected ')'"); // /Users/j/src/ffmpeg/libavformat/avio.h:594:9
pub const __llvm__ = 1;
pub const __clang__ = 1;
pub const __clang_major__ = 11;
pub const __clang_minor__ = 1;
pub const __clang_patchlevel__ = 0;
pub const __clang_version__ = "11.1.0 ";
pub const __GNUC__ = 4;
pub const __GNUC_MINOR__ = 2;
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __GXX_ABI_VERSION = 1002;
pub const __ATOMIC_RELAXED = 0;
pub const __ATOMIC_CONSUME = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const __ATOMIC_RELEASE = 3;
pub const __ATOMIC_ACQ_REL = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __VERSION__ = "Clang 11.1.0";
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __block = __attribute__(__blocks__(byref));
pub const __BLOCKS__ = 1;
pub const __OPTIMIZE__ = 1;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = 1;
pub const _LP64 = 1;
pub const __LP64__ = 1;
pub const __CHAR_BIT__ = 8;
pub const __SCHAR_MAX__ = 127;
pub const __SHRT_MAX__ = 32767;
pub const __INT_MAX__ = 2147483647;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = 2147483647;
pub const __WINT_MAX__ = 2147483647;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = 8;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SIZEOF_INT__ = 4;
pub const __SIZEOF_LONG__ = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZEOF_SHORT__ = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __SIZEOF_WINT_T__ = 4;
pub const __SIZEOF_INT128__ = 16;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INTMAX_WIDTH__ = 64;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = 64;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = 64;
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = 32;
pub const __WINT_TYPE__ = c_int;
pub const __WINT_WIDTH__ = 32;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = 64;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __FLT_MAX_EXP__ = 128;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -37;
pub const __FLT_MIN_EXP__ = -125;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = 1;
pub const __DBL_DIG__ = 15;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __DBL_MAX_EXP__ = 1024;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __DBL_MIN_EXP__ = -1021;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_DIG__ = 18;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = 64;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = LL;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = 255;
pub const __INT8_MAX__ = 127;
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = 65535;
pub const __INT16_MAX__ = 32767;
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __INT32_MAX__ = 2147483647;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = ULL;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = 127;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = 255;
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = 127;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = 255;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = _;
pub const __FINITE_MATH_ONLY__ = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __PIC__ = 2;
pub const __pic__ = 2;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __FLT_RADIX__ = 2;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = 2;
pub const __nonnull = _Nonnull;
pub const __null_unspecified = _Null_unspecified;
pub const __nullable = _Nullable;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __code_model_small__ = 1;
pub const __amd64__ = 1;
pub const __amd64 = 1;
pub const __x86_64 = 1;
pub const __x86_64__ = 1;
pub const __SEG_GS = 1;
pub const __SEG_FS = 1;
pub const __seg_gs = __attribute__(address_space(256));
pub const __seg_fs = __attribute__(address_space(257));
pub const __corei7 = 1;
pub const __corei7__ = 1;
pub const __tune_corei7__ = 1;
pub const __NO_MATH_INLINES = 1;
pub const __AES__ = 1;
pub const __PCLMUL__ = 1;
pub const __LZCNT__ = 1;
pub const __RDRND__ = 1;
pub const __FSGSBASE__ = 1;
pub const __BMI__ = 1;
pub const __BMI2__ = 1;
pub const __POPCNT__ = 1;
pub const __PRFCHW__ = 1;
pub const __RDSEED__ = 1;
pub const __ADX__ = 1;
pub const __MOVBE__ = 1;
pub const __FMA__ = 1;
pub const __F16C__ = 1;
pub const __FXSR__ = 1;
pub const __XSAVE__ = 1;
pub const __XSAVEOPT__ = 1;
pub const __XSAVEC__ = 1;
pub const __XSAVES__ = 1;
pub const __CLFLUSHOPT__ = 1;
pub const __SGX__ = 1;
pub const __INVPCID__ = 1;
pub const __AVX2__ = 1;
pub const __AVX__ = 1;
pub const __SSE4_2__ = 1;
pub const __SSE4_1__ = 1;
pub const __SSSE3__ = 1;
pub const __SSE3__ = 1;
pub const __SSE2__ = 1;
pub const __SSE2_MATH__ = 1;
pub const __SSE__ = 1;
pub const __SSE_MATH__ = 1;
pub const __MMX__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __APPLE_CC__ = 6000;
pub const __APPLE__ = 1;
pub const __STDC_NO_THREADS__ = 1;
pub const __weak = __attribute__(objc_gc(weak));
pub const __DYNAMIC__ = 1;
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = 110300;
pub const __MACH__ = 1;
pub const __STDC__ = 1;
pub const __STDC_HOSTED__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = 1;
pub const __STDC_UTF_32__ = 1;
pub const _DEBUG = 1;
pub fn __P(protos: anytype) callconv(.Inline) @TypeOf(protos) {
    return protos;
}
pub const __signed = c_int;
pub const __dead2 = __attribute__(__noreturn__);
pub const __pure2 = __attribute__(__const__);
pub const __unused = __attribute__(__unused__);
pub const __used = __attribute__(__used__);
pub const __cold = __attribute__(__cold__);
pub const __deprecated = __attribute__(__deprecated__);
pub fn __deprecated_msg(_msg: anytype) callconv(.Inline) @TypeOf(__attribute__(__deprecated__(_msg))) {
    return __attribute__(__deprecated__(_msg));
}
pub fn __deprecated_enum_msg(_msg: anytype) callconv(.Inline) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const __unavailable = __attribute__(__unavailable__);
pub const __disable_tail_calls = __attribute__(__disable_tail_calls__);
pub const __not_tail_called = __attribute__(__not_tail_called__);
pub const __result_use_check = __attribute__(__warn_unused_result__);
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_always_inline = __header_inline ++ __attribute__(__always_inline__);
pub const __unreachable_ok_pop = _Pragma("clang diagnostic pop");
pub fn __printflike(fmtarg: anytype, firstvararg: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__printf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf__, fmtarg, firstvararg));
}
pub fn __printf0like(fmtarg: anytype, firstvararg: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__printf0__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf0__, fmtarg, firstvararg));
}
pub fn __scanflike(fmtarg: anytype, firstvararg: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__scanf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__scanf__, fmtarg, firstvararg));
}
pub fn __COPYRIGHT(s: anytype) callconv(.Inline) @TypeOf(__IDSTRING(copyright, s)) {
    return __IDSTRING(copyright, s);
}
pub fn __RCSID(s: anytype) callconv(.Inline) @TypeOf(__IDSTRING(rcsid, s)) {
    return __IDSTRING(rcsid, s);
}
pub fn __SCCSID(s: anytype) callconv(.Inline) @TypeOf(__IDSTRING(sccsid, s)) {
    return __IDSTRING(sccsid, s);
}
pub fn __PROJECT_VERSION(s: anytype) callconv(.Inline) @TypeOf(__IDSTRING(project_version, s)) {
    return __IDSTRING(project_version, s);
}
pub const __DARWIN_ONLY_64_BIT_INO_T = 0;
pub const __DARWIN_ONLY_VERS_1050 = 0;
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = 1;
pub const __DARWIN_UNIX03 = 1;
pub const __DARWIN_64_BIT_INO_T = 1;
pub const __DARWIN_VERS_1050 = 1;
pub const __DARWIN_NON_CANCELABLE = 0;
pub const __DARWIN_SUF_64_BIT_INO_T = "$INODE64";
pub const __DARWIN_SUF_1050 = "$1050";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub const __DARWIN_C_ANSI = @as(c_long, 0o010000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = 1;
pub const __DARWIN_NO_LONG_LONG = 0;
pub const _DARWIN_FEATURE_64_BIT_INODE = 1;
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;
pub fn __CAST_AWAY_QUALIFIER(variable: anytype, qualifier: anytype, type_1: anytype) callconv(.Inline) @TypeOf(@import("std").meta.cast(type_1, c_long)(variable)) {
    return @import("std").meta.cast(type_1, c_long)(variable);
}
pub const __XNU_PRIVATE_EXTERN = __attribute__(visibility("hidden"));
pub const __enum_open = __attribute__(__enum_extensibility__(open));
pub const __enum_closed = __attribute__(__enum_extensibility__(closed));
pub const __enum_options = __attribute__(__flag_enum__);
pub const EPERM = 1;
pub const ENOENT = 2;
pub const ESRCH = 3;
pub const EINTR = 4;
pub const EIO = 5;
pub const ENXIO = 6;
pub const E2BIG = 7;
pub const ENOEXEC = 8;
pub const EBADF = 9;
pub const ECHILD = 10;
pub const EDEADLK = 11;
pub const ENOMEM = 12;
pub const EACCES = 13;
pub const EFAULT = 14;
pub const ENOTBLK = 15;
pub const EBUSY = 16;
pub const EEXIST = 17;
pub const EXDEV = 18;
pub const ENODEV = 19;
pub const ENOTDIR = 20;
pub const EISDIR = 21;
pub const EINVAL = 22;
pub const ENFILE = 23;
pub const EMFILE = 24;
pub const ENOTTY = 25;
pub const ETXTBSY = 26;
pub const EFBIG = 27;
pub const ENOSPC = 28;
pub const ESPIPE = 29;
pub const EROFS = 30;
pub const EMLINK = 31;
pub const EPIPE = 32;
pub const EDOM = 33;
pub const ERANGE = 34;
pub const EAGAIN = 35;
pub const EWOULDBLOCK = EAGAIN;
pub const EINPROGRESS = 36;
pub const EALREADY = 37;
pub const ENOTSOCK = 38;
pub const EDESTADDRREQ = 39;
pub const EMSGSIZE = 40;
pub const EPROTOTYPE = 41;
pub const ENOPROTOOPT = 42;
pub const EPROTONOSUPPORT = 43;
pub const ESOCKTNOSUPPORT = 44;
pub const ENOTSUP = 45;
pub const EPFNOSUPPORT = 46;
pub const EAFNOSUPPORT = 47;
pub const EADDRINUSE = 48;
pub const EADDRNOTAVAIL = 49;
pub const ENETDOWN = 50;
pub const ENETUNREACH = 51;
pub const ENETRESET = 52;
pub const ECONNABORTED = 53;
pub const ECONNRESET = 54;
pub const ENOBUFS = 55;
pub const EISCONN = 56;
pub const ENOTCONN = 57;
pub const ESHUTDOWN = 58;
pub const ETOOMANYREFS = 59;
pub const ETIMEDOUT = 60;
pub const ECONNREFUSED = 61;
pub const ELOOP = 62;
pub const ENAMETOOLONG = 63;
pub const EHOSTDOWN = 64;
pub const EHOSTUNREACH = 65;
pub const ENOTEMPTY = 66;
pub const EPROCLIM = 67;
pub const EUSERS = 68;
pub const EDQUOT = 69;
pub const ESTALE = 70;
pub const EREMOTE = 71;
pub const EBADRPC = 72;
pub const ERPCMISMATCH = 73;
pub const EPROGUNAVAIL = 74;
pub const EPROGMISMATCH = 75;
pub const EPROCUNAVAIL = 76;
pub const ENOLCK = 77;
pub const ENOSYS = 78;
pub const EFTYPE = 79;
pub const EAUTH = 80;
pub const ENEEDAUTH = 81;
pub const EPWROFF = 82;
pub const EDEVERR = 83;
pub const EOVERFLOW = 84;
pub const EBADEXEC = 85;
pub const EBADARCH = 86;
pub const ESHLIBVERS = 87;
pub const EBADMACHO = 88;
pub const ECANCELED = 89;
pub const EIDRM = 90;
pub const ENOMSG = 91;
pub const EILSEQ = 92;
pub const ENOATTR = 93;
pub const EBADMSG = 94;
pub const EMULTIHOP = 95;
pub const ENODATA = 96;
pub const ENOLINK = 97;
pub const ENOSR = 98;
pub const ENOSTR = 99;
pub const EPROTO = 100;
pub const ETIME = 101;
pub const EOPNOTSUPP = 102;
pub const ENOPOLICY = 103;
pub const ENOTRECOVERABLE = 104;
pub const EOWNERDEAD = 105;
pub const EQFULL = 106;
pub const ELAST = 106;
pub const __WORDSIZE = 64;
pub const __DARWIN_NULL = @import("std").meta.cast(?*c_void, 0);
pub const __PTHREAD_SIZE__ = 8176;
pub const __PTHREAD_ATTR_SIZE__ = 56;
pub const __PTHREAD_MUTEXATTR_SIZE__ = 8;
pub const __PTHREAD_MUTEX_SIZE__ = 56;
pub const __PTHREAD_CONDATTR_SIZE__ = 8;
pub const __PTHREAD_COND_SIZE__ = 40;
pub const __PTHREAD_ONCE_SIZE__ = 8;
pub const __PTHREAD_RWLOCK_SIZE__ = 192;
pub const __PTHREAD_RWLOCKATTR_SIZE__ = 16;
pub fn __offsetof(type_1: anytype, field: anytype) callconv(.Inline) @TypeOf(__builtin_offsetof(type_1, field)) {
    return __builtin_offsetof(type_1, field);
}
pub const USER_ADDR_NULL = @import("std").meta.cast(user_addr_t, 0);
pub fn CAST_USER_ADDR_T(a_ptr: anytype) callconv(.Inline) user_addr_t {
    return @import("std").meta.cast(user_addr_t, @import("std").meta.cast(usize, a_ptr));
}
pub fn INT8_C(v: anytype) callconv(.Inline) @TypeOf(v) {
    return v;
}
pub fn INT16_C(v: anytype) callconv(.Inline) @TypeOf(v) {
    return v;
}
pub fn INT32_C(v: anytype) callconv(.Inline) @TypeOf(v) {
    return v;
}
pub fn UINT8_C(v: anytype) callconv(.Inline) @TypeOf(v) {
    return v;
}
pub fn UINT16_C(v: anytype) callconv(.Inline) @TypeOf(v) {
    return v;
}
pub const INT8_MAX = 127;
pub const INT16_MAX = 32767;
pub const INT32_MAX = 2147483647;
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -128;
pub const INT16_MIN = -32768;
pub const INT32_MIN = -INT32_MAX - 1;
pub const INT64_MIN = -INT64_MAX - 1;
pub const UINT8_MAX = 255;
pub const UINT16_MAX = 65535;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @as(c_long, 9223372036854775807);
pub const INTPTR_MIN = -INTPTR_MAX - 1;
pub const UINTPTR_MAX = @as(c_ulong, 18446744073709551615);
pub const INTMAX_MAX = INTMAX_C(9223372036854775807);
pub const UINTMAX_MAX = UINTMAX_C(18446744073709551615);
pub const INTMAX_MIN = -INTMAX_MAX - 1;
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> 1;
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - 1;
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const FF_LAMBDA_SHIFT = 7;
pub const FF_LAMBDA_SCALE = 1 << FF_LAMBDA_SHIFT;
pub const FF_QP2LAMBDA = 118;
pub const FF_LAMBDA_MAX = (256 * 128) - 1;
pub const FF_QUALITY_SCALE = FF_LAMBDA_SCALE;
pub const AV_NOPTS_VALUE = @import("std").meta.cast(i64, UINT64_C(0x8000000000000000));
pub const AV_TIME_BASE = 1000000;
pub const AV_TIME_BASE_Q = @import("std").mem.zeroInit(AVRational, .{ 1, AV_TIME_BASE });
pub const __PRI_8_LENGTH_MODIFIER__ = "hh";
pub const __PRI_64_LENGTH_MODIFIER__ = "ll";
pub const __SCN_64_LENGTH_MODIFIER__ = "ll";
pub const __PRI_MAX_LENGTH_MODIFIER__ = "j";
pub const __SCN_MAX_LENGTH_MODIFIER__ = "j";
pub const PRId8 = __PRI_8_LENGTH_MODIFIER__ ++ "d";
pub const PRIi8 = __PRI_8_LENGTH_MODIFIER__ ++ "i";
pub const PRIo8 = __PRI_8_LENGTH_MODIFIER__ ++ "o";
pub const PRIu8 = __PRI_8_LENGTH_MODIFIER__ ++ "u";
pub const PRIx8 = __PRI_8_LENGTH_MODIFIER__ ++ "x";
pub const PRIX8 = __PRI_8_LENGTH_MODIFIER__ ++ "X";
pub const PRId16 = "hd";
pub const PRIi16 = "hi";
pub const PRIo16 = "ho";
pub const PRIu16 = "hu";
pub const PRIx16 = "hx";
pub const PRIX16 = "hX";
pub const PRId32 = "d";
pub const PRIi32 = "i";
pub const PRIo32 = "o";
pub const PRIu32 = "u";
pub const PRIx32 = "x";
pub const PRIX32 = "X";
pub const PRId64 = __PRI_64_LENGTH_MODIFIER__ ++ "d";
pub const PRIi64 = __PRI_64_LENGTH_MODIFIER__ ++ "i";
pub const PRIo64 = __PRI_64_LENGTH_MODIFIER__ ++ "o";
pub const PRIu64 = __PRI_64_LENGTH_MODIFIER__ ++ "u";
pub const PRIx64 = __PRI_64_LENGTH_MODIFIER__ ++ "x";
pub const PRIX64 = __PRI_64_LENGTH_MODIFIER__ ++ "X";
pub const PRIdLEAST8 = PRId8;
pub const PRIiLEAST8 = PRIi8;
pub const PRIoLEAST8 = PRIo8;
pub const PRIuLEAST8 = PRIu8;
pub const PRIxLEAST8 = PRIx8;
pub const PRIXLEAST8 = PRIX8;
pub const PRIdLEAST16 = PRId16;
pub const PRIiLEAST16 = PRIi16;
pub const PRIoLEAST16 = PRIo16;
pub const PRIuLEAST16 = PRIu16;
pub const PRIxLEAST16 = PRIx16;
pub const PRIXLEAST16 = PRIX16;
pub const PRIdLEAST32 = PRId32;
pub const PRIiLEAST32 = PRIi32;
pub const PRIoLEAST32 = PRIo32;
pub const PRIuLEAST32 = PRIu32;
pub const PRIxLEAST32 = PRIx32;
pub const PRIXLEAST32 = PRIX32;
pub const PRIdLEAST64 = PRId64;
pub const PRIiLEAST64 = PRIi64;
pub const PRIoLEAST64 = PRIo64;
pub const PRIuLEAST64 = PRIu64;
pub const PRIxLEAST64 = PRIx64;
pub const PRIXLEAST64 = PRIX64;
pub const PRIdFAST8 = PRId8;
pub const PRIiFAST8 = PRIi8;
pub const PRIoFAST8 = PRIo8;
pub const PRIuFAST8 = PRIu8;
pub const PRIxFAST8 = PRIx8;
pub const PRIXFAST8 = PRIX8;
pub const PRIdFAST16 = PRId16;
pub const PRIiFAST16 = PRIi16;
pub const PRIoFAST16 = PRIo16;
pub const PRIuFAST16 = PRIu16;
pub const PRIxFAST16 = PRIx16;
pub const PRIXFAST16 = PRIX16;
pub const PRIdFAST32 = PRId32;
pub const PRIiFAST32 = PRIi32;
pub const PRIoFAST32 = PRIo32;
pub const PRIuFAST32 = PRIu32;
pub const PRIxFAST32 = PRIx32;
pub const PRIXFAST32 = PRIX32;
pub const PRIdFAST64 = PRId64;
pub const PRIiFAST64 = PRIi64;
pub const PRIoFAST64 = PRIo64;
pub const PRIuFAST64 = PRIu64;
pub const PRIxFAST64 = PRIx64;
pub const PRIXFAST64 = PRIX64;
pub const PRIdPTR = "ld";
pub const PRIiPTR = "li";
pub const PRIoPTR = "lo";
pub const PRIuPTR = "lu";
pub const PRIxPTR = "lx";
pub const PRIXPTR = "lX";
pub const PRIdMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "d";
pub const PRIiMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "i";
pub const PRIoMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "o";
pub const PRIuMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "u";
pub const PRIxMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "x";
pub const PRIXMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "X";
pub const SCNd8 = __PRI_8_LENGTH_MODIFIER__ ++ "d";
pub const SCNi8 = __PRI_8_LENGTH_MODIFIER__ ++ "i";
pub const SCNo8 = __PRI_8_LENGTH_MODIFIER__ ++ "o";
pub const SCNu8 = __PRI_8_LENGTH_MODIFIER__ ++ "u";
pub const SCNx8 = __PRI_8_LENGTH_MODIFIER__ ++ "x";
pub const SCNd16 = "hd";
pub const SCNi16 = "hi";
pub const SCNo16 = "ho";
pub const SCNu16 = "hu";
pub const SCNx16 = "hx";
pub const SCNd32 = "d";
pub const SCNi32 = "i";
pub const SCNo32 = "o";
pub const SCNu32 = "u";
pub const SCNx32 = "x";
pub const SCNd64 = __SCN_64_LENGTH_MODIFIER__ ++ "d";
pub const SCNi64 = __SCN_64_LENGTH_MODIFIER__ ++ "i";
pub const SCNo64 = __SCN_64_LENGTH_MODIFIER__ ++ "o";
pub const SCNu64 = __SCN_64_LENGTH_MODIFIER__ ++ "u";
pub const SCNx64 = __SCN_64_LENGTH_MODIFIER__ ++ "x";
pub const SCNdLEAST8 = SCNd8;
pub const SCNiLEAST8 = SCNi8;
pub const SCNoLEAST8 = SCNo8;
pub const SCNuLEAST8 = SCNu8;
pub const SCNxLEAST8 = SCNx8;
pub const SCNdLEAST16 = SCNd16;
pub const SCNiLEAST16 = SCNi16;
pub const SCNoLEAST16 = SCNo16;
pub const SCNuLEAST16 = SCNu16;
pub const SCNxLEAST16 = SCNx16;
pub const SCNdLEAST32 = SCNd32;
pub const SCNiLEAST32 = SCNi32;
pub const SCNoLEAST32 = SCNo32;
pub const SCNuLEAST32 = SCNu32;
pub const SCNxLEAST32 = SCNx32;
pub const SCNdLEAST64 = SCNd64;
pub const SCNiLEAST64 = SCNi64;
pub const SCNoLEAST64 = SCNo64;
pub const SCNuLEAST64 = SCNu64;
pub const SCNxLEAST64 = SCNx64;
pub const SCNdFAST8 = SCNd8;
pub const SCNiFAST8 = SCNi8;
pub const SCNoFAST8 = SCNo8;
pub const SCNuFAST8 = SCNu8;
pub const SCNxFAST8 = SCNx8;
pub const SCNdFAST16 = SCNd16;
pub const SCNiFAST16 = SCNi16;
pub const SCNoFAST16 = SCNo16;
pub const SCNuFAST16 = SCNu16;
pub const SCNxFAST16 = SCNx16;
pub const SCNdFAST32 = SCNd32;
pub const SCNiFAST32 = SCNi32;
pub const SCNoFAST32 = SCNo32;
pub const SCNuFAST32 = SCNu32;
pub const SCNxFAST32 = SCNx32;
pub const SCNdFAST64 = SCNd64;
pub const SCNiFAST64 = SCNi64;
pub const SCNoFAST64 = SCNo64;
pub const SCNuFAST64 = SCNu64;
pub const SCNxFAST64 = SCNx64;
pub const SCNdPTR = "ld";
pub const SCNiPTR = "li";
pub const SCNoPTR = "lo";
pub const SCNuPTR = "lu";
pub const SCNxPTR = "lx";
pub const SCNdMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "d";
pub const SCNiMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "i";
pub const SCNoMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "o";
pub const SCNuMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "u";
pub const SCNxMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "x";
pub const __API_TO_BE_DEPRECATED = 100000;
pub const __MAC_10_0 = 1000;
pub const __MAC_10_1 = 1010;
pub const __MAC_10_2 = 1020;
pub const __MAC_10_3 = 1030;
pub const __MAC_10_4 = 1040;
pub const __MAC_10_5 = 1050;
pub const __MAC_10_6 = 1060;
pub const __MAC_10_7 = 1070;
pub const __MAC_10_8 = 1080;
pub const __MAC_10_9 = 1090;
pub const __MAC_10_10 = 101000;
pub const __MAC_10_10_2 = 101002;
pub const __MAC_10_10_3 = 101003;
pub const __MAC_10_11 = 101100;
pub const __MAC_10_11_2 = 101102;
pub const __MAC_10_11_3 = 101103;
pub const __MAC_10_11_4 = 101104;
pub const __MAC_10_12 = 101200;
pub const __MAC_10_12_1 = 101201;
pub const __MAC_10_12_2 = 101202;
pub const __MAC_10_12_4 = 101204;
pub const __MAC_10_13 = 101300;
pub const __MAC_10_13_1 = 101301;
pub const __MAC_10_13_2 = 101302;
pub const __MAC_10_13_4 = 101304;
pub const __MAC_10_14 = 101400;
pub const __MAC_10_14_1 = 101401;
pub const __MAC_10_14_4 = 101404;
pub const __MAC_10_15 = 101500;
pub const __MAC_10_15_1 = 101501;
pub const __MAC_10_15_4 = 101504;
pub const __IPHONE_2_0 = 20000;
pub const __IPHONE_2_1 = 20100;
pub const __IPHONE_2_2 = 20200;
pub const __IPHONE_3_0 = 30000;
pub const __IPHONE_3_1 = 30100;
pub const __IPHONE_3_2 = 30200;
pub const __IPHONE_4_0 = 40000;
pub const __IPHONE_4_1 = 40100;
pub const __IPHONE_4_2 = 40200;
pub const __IPHONE_4_3 = 40300;
pub const __IPHONE_5_0 = 50000;
pub const __IPHONE_5_1 = 50100;
pub const __IPHONE_6_0 = 60000;
pub const __IPHONE_6_1 = 60100;
pub const __IPHONE_7_0 = 70000;
pub const __IPHONE_7_1 = 70100;
pub const __IPHONE_8_0 = 80000;
pub const __IPHONE_8_1 = 80100;
pub const __IPHONE_8_2 = 80200;
pub const __IPHONE_8_3 = 80300;
pub const __IPHONE_8_4 = 80400;
pub const __IPHONE_9_0 = 90000;
pub const __IPHONE_9_1 = 90100;
pub const __IPHONE_9_2 = 90200;
pub const __IPHONE_9_3 = 90300;
pub const __IPHONE_10_0 = 100000;
pub const __IPHONE_10_1 = 100100;
pub const __IPHONE_10_2 = 100200;
pub const __IPHONE_10_3 = 100300;
pub const __IPHONE_11_0 = 110000;
pub const __IPHONE_11_1 = 110100;
pub const __IPHONE_11_2 = 110200;
pub const __IPHONE_11_3 = 110300;
pub const __IPHONE_11_4 = 110400;
pub const __IPHONE_12_0 = 120000;
pub const __IPHONE_12_1 = 120100;
pub const __IPHONE_12_2 = 120200;
pub const __IPHONE_12_3 = 120300;
pub const __IPHONE_13_0 = 130000;
pub const __IPHONE_13_1 = 130100;
pub const __IPHONE_13_2 = 130200;
pub const __IPHONE_13_3 = 130300;
pub const __IPHONE_13_4 = 130400;
pub const __IPHONE_13_5 = 130500;
pub const __IPHONE_13_6 = 130600;
pub const __TVOS_9_0 = 90000;
pub const __TVOS_9_1 = 90100;
pub const __TVOS_9_2 = 90200;
pub const __TVOS_10_0 = 100000;
pub const __TVOS_10_0_1 = 100001;
pub const __TVOS_10_1 = 100100;
pub const __TVOS_10_2 = 100200;
pub const __TVOS_11_0 = 110000;
pub const __TVOS_11_1 = 110100;
pub const __TVOS_11_2 = 110200;
pub const __TVOS_11_3 = 110300;
pub const __TVOS_11_4 = 110400;
pub const __TVOS_12_0 = 120000;
pub const __TVOS_12_1 = 120100;
pub const __TVOS_12_2 = 120200;
pub const __TVOS_12_3 = 120300;
pub const __TVOS_13_0 = 130000;
pub const __TVOS_13_2 = 130200;
pub const __TVOS_13_3 = 130300;
pub const __TVOS_13_4 = 130400;
pub const __WATCHOS_1_0 = 10000;
pub const __WATCHOS_2_0 = 20000;
pub const __WATCHOS_2_1 = 20100;
pub const __WATCHOS_2_2 = 20200;
pub const __WATCHOS_3_0 = 30000;
pub const __WATCHOS_3_1 = 30100;
pub const __WATCHOS_3_1_1 = 30101;
pub const __WATCHOS_3_2 = 30200;
pub const __WATCHOS_4_0 = 40000;
pub const __WATCHOS_4_1 = 40100;
pub const __WATCHOS_4_2 = 40200;
pub const __WATCHOS_4_3 = 40300;
pub const __WATCHOS_5_0 = 50000;
pub const __WATCHOS_5_1 = 50100;
pub const __WATCHOS_5_2 = 50200;
pub const __WATCHOS_6_0 = 60000;
pub const __WATCHOS_6_1 = 60100;
pub const __WATCHOS_6_2 = 60200;
pub const __DRIVERKIT_19_0 = 190000;
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_10_15;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = __attribute__(deprecated);
pub fn __AVAILABILITY_INTERNAL_DEPRECATED_MSG(_msg: anytype) callconv(.Inline) @TypeOf(__attribute__(deprecated(_msg))) {
    return __attribute__(deprecated(_msg));
}
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = __attribute__(unavailable);
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = __attribute__(weak_import);
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = 1;
pub const __AVAILABILITY_INTERNAL__MAC_NA = __attribute__(availability(macosx, unavailable));
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = __attribute__(availability(macosx, unavailable));
pub fn __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG(_msg: anytype) callconv(.Inline) @TypeOf(__attribute__(availability(macosx, unavailable))) {
    return __attribute__(availability(macosx, unavailable));
}
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub fn __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG(_msg: anytype) callconv(.Inline) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub fn __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG(_msg: anytype) callconv(.Inline) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub fn __API_AVAILABLE1(x: anytype) callconv(.Inline) @TypeOf(__API_A(x)) {
    return __API_A(x);
}
pub fn __API_RANGE_STRINGIFY(x: anytype) callconv(.Inline) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    return __API_RANGE_STRINGIFY2(x);
}
pub fn __API_AVAILABLE_BEGIN1(a: anytype) callconv(.Inline) @TypeOf(__API_A_BEGIN(a)) {
    return __API_A_BEGIN(a);
}
pub fn __API_DEPRECATED_MSG2(msg: anytype, x: anytype) callconv(.Inline) @TypeOf(__API_D(msg, x)) {
    return __API_D(msg, x);
}
pub fn __API_DEPRECATED_BEGIN_MSG2(msg: anytype, a: anytype) callconv(.Inline) @TypeOf(__API_D_BEGIN(msg, a)) {
    return __API_D_BEGIN(msg, a);
}
pub fn __API_DEPRECATED_REP2(rep: anytype, x: anytype) callconv(.Inline) @TypeOf(__API_R(rep, x)) {
    return __API_R(rep, x);
}
pub fn __API_DEPRECATED_BEGIN_REP2(rep: anytype, a: anytype) callconv(.Inline) @TypeOf(__API_R_BEGIN(rep, a)) {
    return __API_R_BEGIN(rep, a);
}
pub const __API_UNAVAILABLE_PLATFORM_macos = blk: {
    _ = macos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_macosx = blk: {
    _ = macosx;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_ios = blk: {
    _ = ios;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_watchos = blk: {
    _ = watchos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_tvos = blk: {
    _ = tvos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = blk: {
    _ = macCatalyst;
    break :blk unavailable;
};
pub fn __API_UNAVAILABLE_PLATFORM_uikitformac(x: anytype) callconv(.Inline) @TypeOf(unavailable) {
    return blk: {
        _ = uikitformac;
        break :blk unavailable;
    };
}
pub const __API_UNAVAILABLE_PLATFORM_driverkit = blk: {
    _ = driverkit;
    break :blk unavailable;
};
pub fn __API_UNAVAILABLE1(x: anytype) callconv(.Inline) @TypeOf(__API_U(x)) {
    return __API_U(x);
}
pub fn __API_UNAVAILABLE_BEGIN1(a: anytype) callconv(.Inline) @TypeOf(__API_U_BEGIN(a)) {
    return __API_U_BEGIN(a);
}
pub fn __OS_AVAILABILITY(_target: anytype, _availability: anytype) callconv(.Inline) @TypeOf(__attribute__(availability(_target, _availability))) {
    return __attribute__(availability(_target, _availability));
}
pub fn __OSX_EXTENSION_UNAVAILABLE(_msg: anytype) callconv(.Inline) @TypeOf(__OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg);
}
pub fn __IOS_EXTENSION_UNAVAILABLE(_msg: anytype) callconv(.Inline) @TypeOf(__OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg);
}
pub const __OSX_UNAVAILABLE = __OS_AVAILABILITY(macosx, unavailable);
pub const __IOS_UNAVAILABLE = __OS_AVAILABILITY(ios, unavailable);
pub const __IOS_PROHIBITED = __OS_AVAILABILITY(ios, unavailable);
pub const __TVOS_UNAVAILABLE = __OS_AVAILABILITY(tvos, unavailable);
pub const __TVOS_PROHIBITED = __OS_AVAILABILITY(tvos, unavailable);
pub const __WATCHOS_UNAVAILABLE = __OS_AVAILABILITY(watchos, unavailable);
pub const __WATCHOS_PROHIBITED = __OS_AVAILABILITY(watchos, unavailable);
pub const __SWIFT_UNAVAILABLE = __OS_AVAILABILITY(swift, unavailable);
pub fn __SWIFT_UNAVAILABLE_MSG(_msg: anytype) callconv(.Inline) @TypeOf(__OS_AVAILABILITY_MSG(swift, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(swift, unavailable, _msg);
}
pub const __API_AVAILABLE_END = _Pragma("clang attribute pop");
pub const __API_DEPRECATED_END = _Pragma("clang attribute pop");
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = _Pragma("clang attribute pop");
pub const __API_UNAVAILABLE_END = _Pragma("clang attribute pop");
pub fn __strfmonlike(fmtarg: anytype, firstvararg: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__strfmon__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__strfmon__, fmtarg, firstvararg));
}
pub fn __strftimelike(fmtarg: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__strftime__, fmtarg, 0))) {
    return __attribute__(__format__(__strftime__, fmtarg, 0));
}
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -0x7fffffff - 1;
pub const __DARWIN_WEOF = __darwin_wint_t - 1;
pub const _FORTIFY_SOURCE = 2;
pub const __DARWIN_CLK_TCK = 100;
pub const CHAR_BIT = 8;
pub const MB_LEN_MAX = 6;
pub const CLK_TCK = __DARWIN_CLK_TCK;
pub const SCHAR_MAX = 127;
pub const SCHAR_MIN = -128;
pub const UCHAR_MAX = 255;
pub const CHAR_MAX = 127;
pub const CHAR_MIN = -128;
pub const USHRT_MAX = 65535;
pub const SHRT_MAX = 32767;
pub const SHRT_MIN = -32768;
pub const UINT_MAX = 0xffffffff;
pub const INT_MAX = 2147483647;
pub const INT_MIN = -2147483647 - 1;
pub const ULONG_MAX = @as(c_ulong, 0xffffffffffffffff);
pub const LONG_MAX = @as(c_long, 0x7fffffffffffffff);
pub const LONG_MIN = -@as(c_long, 0x7fffffffffffffff) - 1;
pub const ULLONG_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const LLONG_MAX = @as(c_longlong, 0x7fffffffffffffff);
pub const LLONG_MIN = -@as(c_longlong, 0x7fffffffffffffff) - 1;
pub const LONG_BIT = 64;
pub const SSIZE_MAX = LONG_MAX;
pub const WORD_BIT = 32;
pub const SIZE_T_MAX = ULONG_MAX;
pub const UQUAD_MAX = ULLONG_MAX;
pub const QUAD_MAX = LLONG_MAX;
pub const QUAD_MIN = LLONG_MIN;
pub const ARG_MAX = 256 * 1024;
pub const CHILD_MAX = 266;
pub const GID_MAX = @as(c_uint, 2147483647);
pub const LINK_MAX = 32767;
pub const MAX_CANON = 1024;
pub const MAX_INPUT = 1024;
pub const NAME_MAX = 255;
pub const NGROUPS_MAX = 16;
pub const UID_MAX = @as(c_uint, 2147483647);
pub const OPEN_MAX = 10240;
pub const PATH_MAX = 1024;
pub const PIPE_BUF = 512;
pub const BC_BASE_MAX = 99;
pub const BC_DIM_MAX = 2048;
pub const BC_SCALE_MAX = 99;
pub const BC_STRING_MAX = 1000;
pub const CHARCLASS_NAME_MAX = 14;
pub const COLL_WEIGHTS_MAX = 2;
pub const EQUIV_CLASS_MAX = 2;
pub const EXPR_NEST_MAX = 32;
pub const LINE_MAX = 2048;
pub const RE_DUP_MAX = 255;
pub const NZERO = 20;
pub const _POSIX_ARG_MAX = 4096;
pub const _POSIX_CHILD_MAX = 25;
pub const _POSIX_LINK_MAX = 8;
pub const _POSIX_MAX_CANON = 255;
pub const _POSIX_MAX_INPUT = 255;
pub const _POSIX_NAME_MAX = 14;
pub const _POSIX_NGROUPS_MAX = 8;
pub const _POSIX_OPEN_MAX = 20;
pub const _POSIX_PATH_MAX = 256;
pub const _POSIX_PIPE_BUF = 512;
pub const _POSIX_SSIZE_MAX = 32767;
pub const _POSIX_STREAM_MAX = 8;
pub const _POSIX_TZNAME_MAX = 6;
pub const _POSIX2_BC_BASE_MAX = 99;
pub const _POSIX2_BC_DIM_MAX = 2048;
pub const _POSIX2_BC_SCALE_MAX = 99;
pub const _POSIX2_BC_STRING_MAX = 1000;
pub const _POSIX2_EQUIV_CLASS_MAX = 2;
pub const _POSIX2_EXPR_NEST_MAX = 32;
pub const _POSIX2_LINE_MAX = 2048;
pub const _POSIX2_RE_DUP_MAX = 255;
pub const _POSIX_AIO_LISTIO_MAX = 2;
pub const _POSIX_AIO_MAX = 1;
pub const _POSIX_DELAYTIMER_MAX = 32;
pub const _POSIX_MQ_OPEN_MAX = 8;
pub const _POSIX_MQ_PRIO_MAX = 32;
pub const _POSIX_RTSIG_MAX = 8;
pub const _POSIX_SEM_NSEMS_MAX = 256;
pub const _POSIX_SEM_VALUE_MAX = 32767;
pub const _POSIX_SIGQUEUE_MAX = 32;
pub const _POSIX_TIMER_MAX = 32;
pub const _POSIX_CLOCKRES_MIN = 20000000;
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4;
pub const _POSIX_THREAD_KEYS_MAX = 128;
pub const _POSIX_THREAD_THREADS_MAX = 64;
pub const PTHREAD_DESTRUCTOR_ITERATIONS = 4;
pub const PTHREAD_KEYS_MAX = 512;
pub const PTHREAD_STACK_MIN = 8192;
pub const _POSIX_HOST_NAME_MAX = 255;
pub const _POSIX_LOGIN_NAME_MAX = 9;
pub const _POSIX_SS_REPL_MAX = 4;
pub const _POSIX_SYMLINK_MAX = 255;
pub const _POSIX_SYMLOOP_MAX = 8;
pub const _POSIX_TRACE_EVENT_NAME_MAX = 30;
pub const _POSIX_TRACE_NAME_MAX = 8;
pub const _POSIX_TRACE_SYS_MAX = 8;
pub const _POSIX_TRACE_USER_EVENT_MAX = 32;
pub const _POSIX_TTY_NAME_MAX = 9;
pub const _POSIX2_CHARCLASS_NAME_MAX = 14;
pub const _POSIX2_COLL_WEIGHTS_MAX = 2;
pub const _POSIX_RE_DUP_MAX = _POSIX2_RE_DUP_MAX;
pub const OFF_MIN = LLONG_MIN;
pub const OFF_MAX = LLONG_MAX;
pub const PASS_MAX = 128;
pub const NL_ARGMAX = 9;
pub const NL_LANGMAX = 14;
pub const NL_MSGMAX = 32767;
pub const NL_NMAX = 1;
pub const NL_SETMAX = 255;
pub const NL_TEXTMAX = 2048;
pub const _XOPEN_IOV_MAX = 16;
pub const IOV_MAX = 1024;
pub const _XOPEN_NAME_MAX = 255;
pub const _XOPEN_PATH_MAX = 1024;
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const NAN = __builtin_nanf("0x7fc00000");
pub const INFINITY = HUGE_VALF;
pub const FP_NAN = 1;
pub const FP_INFINITE = 2;
pub const FP_ZERO = 3;
pub const FP_NORMAL = 4;
pub const FP_SUBNORMAL = 5;
pub const FP_SUPERNORMAL = 6;
pub const FP_FAST_FMA = 1;
pub const FP_FAST_FMAF = 1;
pub const FP_ILOGB0 = -2147483647 - 1;
pub const FP_ILOGBNAN = -2147483647 - 1;
pub const MATH_ERRNO = 1;
pub const MATH_ERREXCEPT = 2;
pub fn isgreater(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_isgreater(x, y)) {
    return __builtin_isgreater(x, y);
}
pub fn isgreaterequal(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_isgreaterequal(x, y)) {
    return __builtin_isgreaterequal(x, y);
}
pub fn isless(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_isless(x, y)) {
    return __builtin_isless(x, y);
}
pub fn islessequal(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_islessequal(x, y)) {
    return __builtin_islessequal(x, y);
}
pub fn islessgreater(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_islessgreater(x, y)) {
    return __builtin_islessgreater(x, y);
}
pub fn isunordered(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__builtin_isunordered(x, y)) {
    return __builtin_isunordered(x, y);
}
pub const M_E = 2.71828182845904523536028747135266250;
pub const M_LOG2E = 1.44269504088896340735992468100189214;
pub const M_LOG10E = 0.434294481903251827651128918916605082;
pub const M_LN2 = 0.693147180559945309417232121458176568;
pub const M_LN10 = 2.30258509299404568401799145468436421;
pub const M_PI = 3.14159265358979323846264338327950288;
pub const M_PI_2 = 1.57079632679489661923132169163975144;
pub const M_PI_4 = 0.785398163397448309615660845819875721;
pub const M_1_PI = 0.318309886183790671537767526745028724;
pub const M_2_PI = 0.636619772367581343075535053490057448;
pub const M_2_SQRTPI = 1.12837916709551257389615890312154517;
pub const M_SQRT2 = 1.41421356237309504880168872420969808;
pub const M_SQRT1_2 = 0.707106781186547524400844362104849039;
pub const MAXFLOAT = @as(f32, 0x1.fffffep+127);
pub const FP_SNAN = FP_NAN;
pub const FP_QNAN = FP_NAN;
pub const HUGE = MAXFLOAT;
pub const X_TLOSS = 1.41484755040568800000e+16;
pub const DOMAIN = 1;
pub const SING = 2;
pub const OVERFLOW = 3;
pub const UNDERFLOW = 4;
pub const TLOSS = 5;
pub const PLOSS = 6;
pub const NULL = __DARWIN_NULL;
pub const RENAME_SECLUDE = 0x00000001;
pub const RENAME_SWAP = 0x00000002;
pub const RENAME_EXCL = 0x00000004;
pub const __SLBF = 0x0001;
pub const __SNBF = 0x0002;
pub const __SRD = 0x0004;
pub const __SWR = 0x0008;
pub const __SRW = 0x0010;
pub const __SEOF = 0x0020;
pub const __SERR = 0x0040;
pub const __SMBF = 0x0080;
pub const __SAPP = 0x0100;
pub const __SSTR = 0x0200;
pub const __SOPT = 0x0400;
pub const __SNPT = 0x0800;
pub const __SOFF = 0x1000;
pub const __SMOD = 0x2000;
pub const __SALC = 0x4000;
pub const __SIGN = 0x8000;
pub const _IOFBF = 0;
pub const _IOLBF = 1;
pub const _IONBF = 2;
pub const BUFSIZ = 1024;
pub const EOF = -1;
pub const FOPEN_MAX = 20;
pub const FILENAME_MAX = 1024;
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = 1024;
pub const TMP_MAX = 308915776;
pub const SEEK_SET = 0;
pub const SEEK_CUR = 1;
pub const SEEK_END = 2;
pub const stdin = __stdinp;
pub const stdout = __stdoutp;
pub const stderr = __stderrp;
pub const L_ctermid = 1024;
pub fn __swift_unavailable_on(osx_msg: anytype, ios_msg: anytype) callconv(.Inline) @TypeOf(__swift_unavailable(osx_msg)) {
    return __swift_unavailable(osx_msg);
}
pub fn __sfeof(p: anytype) callconv(.Inline) @TypeOf((p.*._flags & __SEOF) != 0) {
    return (p.*._flags & __SEOF) != 0;
}
pub fn __sferror(p: anytype) callconv(.Inline) @TypeOf((p.*._flags & __SERR) != 0) {
    return (p.*._flags & __SERR) != 0;
}
pub fn __sfileno(p: anytype) callconv(.Inline) @TypeOf(p.*._file) {
    return p.*._file;
}
pub fn fropen(cookie: anytype, @"fn": anytype) callconv(.Inline) @TypeOf(funopen(cookie, @"fn", 0, 0, 0)) {
    return funopen(cookie, @"fn", 0, 0, 0);
}
pub fn fwopen(cookie: anytype, @"fn": anytype) callconv(.Inline) @TypeOf(funopen(cookie, 0, @"fn", 0, 0)) {
    return funopen(cookie, 0, @"fn", 0, 0);
}
pub fn feof_unlocked(p: anytype) callconv(.Inline) @TypeOf(__sfeof(p)) {
    return __sfeof(p);
}
pub fn ferror_unlocked(p: anytype) callconv(.Inline) @TypeOf(__sferror(p)) {
    return __sferror(p);
}
pub fn clearerr_unlocked(p: anytype) callconv(.Inline) @TypeOf(__sclearerr(p)) {
    return __sclearerr(p);
}
pub fn fileno_unlocked(p: anytype) callconv(.Inline) @TypeOf(__sfileno(p)) {
    return __sfileno(p);
}
pub const _USE_FORTIFY_LEVEL = 2;
pub fn __darwin_obsz0(object: anytype) callconv(.Inline) @TypeOf(__builtin_object_size(object, 0)) {
    return __builtin_object_size(object, 0);
}
pub fn __darwin_obsz(object: anytype) callconv(.Inline) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > 1) 1 else 0)) {
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > 1) 1 else 0);
}
pub const __DARWIN_NSIG = 32;
pub const NSIG = __DARWIN_NSIG;
pub const _I386_SIGNAL_H_ = 1;
pub const SIGHUP = 1;
pub const SIGINT = 2;
pub const SIGQUIT = 3;
pub const SIGILL = 4;
pub const SIGTRAP = 5;
pub const SIGABRT = 6;
pub const SIGIOT = SIGABRT;
pub const SIGEMT = 7;
pub const SIGFPE = 8;
pub const SIGKILL = 9;
pub const SIGBUS = 10;
pub const SIGSEGV = 11;
pub const SIGSYS = 12;
pub const SIGPIPE = 13;
pub const SIGALRM = 14;
pub const SIGTERM = 15;
pub const SIGURG = 16;
pub const SIGSTOP = 17;
pub const SIGTSTP = 18;
pub const SIGCONT = 19;
pub const SIGCHLD = 20;
pub const SIGTTIN = 21;
pub const SIGTTOU = 22;
pub const SIGIO = 23;
pub const SIGXCPU = 24;
pub const SIGXFSZ = 25;
pub const SIGVTALRM = 26;
pub const SIGPROF = 27;
pub const SIGWINCH = 28;
pub const SIGINFO = 29;
pub const SIGUSR1 = 30;
pub const SIGUSR2 = 31;
pub const _STRUCT_X86_THREAD_STATE32 = struct___darwin_i386_thread_state;
pub const _STRUCT_FP_CONTROL = struct___darwin_fp_control;
pub const FP_PREC_24B = 0;
pub const FP_PREC_53B = 2;
pub const FP_PREC_64B = 3;
pub const FP_RND_NEAR = 0;
pub const FP_RND_DOWN = 1;
pub const FP_RND_UP = 2;
pub const FP_CHOP = 3;
pub const _STRUCT_FP_STATUS = struct___darwin_fp_status;
pub const _STRUCT_MMST_REG = struct___darwin_mmst_reg;
pub const _STRUCT_XMM_REG = struct___darwin_xmm_reg;
pub const _STRUCT_YMM_REG = struct___darwin_ymm_reg;
pub const _STRUCT_ZMM_REG = struct___darwin_zmm_reg;
pub const _STRUCT_OPMASK_REG = struct___darwin_opmask_reg;
pub const FP_STATE_BYTES = 512;
pub const _STRUCT_X86_FLOAT_STATE32 = struct___darwin_i386_float_state;
pub const _STRUCT_X86_AVX_STATE32 = struct___darwin_i386_avx_state;
pub const _STRUCT_X86_AVX512_STATE32 = struct___darwin_i386_avx512_state;
pub const _STRUCT_X86_EXCEPTION_STATE32 = struct___darwin_i386_exception_state;
pub const _STRUCT_X86_DEBUG_STATE32 = struct___darwin_x86_debug_state32;
pub const _STRUCT_X86_PAGEIN_STATE = struct___x86_pagein_state;
pub const _STRUCT_X86_THREAD_STATE64 = struct___darwin_x86_thread_state64;
pub const _STRUCT_X86_THREAD_FULL_STATE64 = struct___darwin_x86_thread_full_state64;
pub const _STRUCT_X86_FLOAT_STATE64 = struct___darwin_x86_float_state64;
pub const _STRUCT_X86_AVX_STATE64 = struct___darwin_x86_avx_state64;
pub const _STRUCT_X86_AVX512_STATE64 = struct___darwin_x86_avx512_state64;
pub const _STRUCT_X86_EXCEPTION_STATE64 = struct___darwin_x86_exception_state64;
pub const _STRUCT_X86_DEBUG_STATE64 = struct___darwin_x86_debug_state64;
pub const _STRUCT_X86_CPMU_STATE64 = struct___darwin_x86_cpmu_state64;
pub const _STRUCT_MCONTEXT32 = struct___darwin_mcontext32;
pub const _STRUCT_MCONTEXT_AVX32 = struct___darwin_mcontext_avx32;
pub const _STRUCT_MCONTEXT_AVX512_32 = struct___darwin_mcontext_avx512_32;
pub const _STRUCT_MCONTEXT64 = struct___darwin_mcontext64;
pub const _STRUCT_MCONTEXT64_FULL = struct___darwin_mcontext64_full;
pub const _STRUCT_MCONTEXT_AVX64 = struct___darwin_mcontext_avx64;
pub const _STRUCT_MCONTEXT_AVX64_FULL = struct___darwin_mcontext_avx64_full;
pub const _STRUCT_MCONTEXT_AVX512_64 = struct___darwin_mcontext_avx512_64;
pub const _STRUCT_MCONTEXT_AVX512_64_FULL = struct___darwin_mcontext_avx512_64_full;
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const _STRUCT_SIGALTSTACK = struct___darwin_sigaltstack;
pub const _STRUCT_UCONTEXT = struct___darwin_ucontext;
pub const SIGEV_NONE = 0;
pub const SIGEV_SIGNAL = 1;
pub const SIGEV_THREAD = 3;
pub const ILL_NOOP = 0;
pub const ILL_ILLOPC = 1;
pub const ILL_ILLTRP = 2;
pub const ILL_PRVOPC = 3;
pub const ILL_ILLOPN = 4;
pub const ILL_ILLADR = 5;
pub const ILL_PRVREG = 6;
pub const ILL_COPROC = 7;
pub const ILL_BADSTK = 8;
pub const FPE_NOOP = 0;
pub const FPE_FLTDIV = 1;
pub const FPE_FLTOVF = 2;
pub const FPE_FLTUND = 3;
pub const FPE_FLTRES = 4;
pub const FPE_FLTINV = 5;
pub const FPE_FLTSUB = 6;
pub const FPE_INTDIV = 7;
pub const FPE_INTOVF = 8;
pub const SEGV_NOOP = 0;
pub const SEGV_MAPERR = 1;
pub const SEGV_ACCERR = 2;
pub const BUS_NOOP = 0;
pub const BUS_ADRALN = 1;
pub const BUS_ADRERR = 2;
pub const BUS_OBJERR = 3;
pub const TRAP_BRKPT = 1;
pub const TRAP_TRACE = 2;
pub const CLD_NOOP = 0;
pub const CLD_EXITED = 1;
pub const CLD_KILLED = 2;
pub const CLD_DUMPED = 3;
pub const CLD_TRAPPED = 4;
pub const CLD_STOPPED = 5;
pub const CLD_CONTINUED = 6;
pub const POLL_IN = 1;
pub const POLL_OUT = 2;
pub const POLL_MSG = 3;
pub const POLL_ERR = 4;
pub const POLL_PRI = 5;
pub const POLL_HUP = 6;
pub const sa_handler = __sigaction_u.__sa_handler;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const SA_ONSTACK = 0x0001;
pub const SA_RESTART = 0x0002;
pub const SA_RESETHAND = 0x0004;
pub const SA_NOCLDSTOP = 0x0008;
pub const SA_NODEFER = 0x0010;
pub const SA_NOCLDWAIT = 0x0020;
pub const SA_SIGINFO = 0x0040;
pub const SA_USERTRAMP = 0x0100;
pub const SA_64REGSET = 0x0200;
pub const SA_USERSPACE_MASK = (((((SA_ONSTACK | SA_RESTART) | SA_RESETHAND) | SA_NOCLDSTOP) | SA_NODEFER) | SA_NOCLDWAIT) | SA_SIGINFO;
pub const SIG_BLOCK = 1;
pub const SIG_UNBLOCK = 2;
pub const SIG_SETMASK = 3;
pub const SI_USER = 0x10001;
pub const SI_QUEUE = 0x10002;
pub const SI_TIMER = 0x10003;
pub const SI_ASYNCIO = 0x10004;
pub const SI_MESGQ = 0x10005;
pub const SS_ONSTACK = 0x0001;
pub const SS_DISABLE = 0x0004;
pub const MINSIGSTKSZ = 32768;
pub const SIGSTKSZ = 131072;
pub const SV_ONSTACK = SA_ONSTACK;
pub const SV_INTERRUPT = SA_RESTART;
pub const SV_RESETHAND = SA_RESETHAND;
pub const SV_NODEFER = SA_NODEFER;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const SV_SIGINFO = SA_SIGINFO;
pub const sv_onstack = sv_flags;
pub fn sigmask(m: anytype) callconv(.Inline) @TypeOf(1 << (m - 1)) {
    return 1 << (m - 1);
}
pub const BADSIG = SIG_ERR;
pub const _STRUCT_TIMEVAL = struct_timeval;
pub const PRIO_PROCESS = 0;
pub const PRIO_PGRP = 1;
pub const PRIO_USER = 2;
pub const PRIO_DARWIN_THREAD = 3;
pub const PRIO_DARWIN_PROCESS = 4;
pub const PRIO_MIN = -20;
pub const PRIO_MAX = 20;
pub const PRIO_DARWIN_BG = 0x1000;
pub const PRIO_DARWIN_NONUI = 0x1001;
pub const RUSAGE_SELF = 0;
pub const RUSAGE_CHILDREN = -1;
pub const ru_first = ru_ixrss;
pub const ru_last = ru_nivcsw;
pub const RUSAGE_INFO_V0 = 0;
pub const RUSAGE_INFO_V1 = 1;
pub const RUSAGE_INFO_V2 = 2;
pub const RUSAGE_INFO_V3 = 3;
pub const RUSAGE_INFO_V4 = 4;
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V4;
pub const RLIM_INFINITY = @import("std").meta.cast(__uint64_t, 1 << 63) - 1;
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub const RLIMIT_CPU = 0;
pub const RLIMIT_FSIZE = 1;
pub const RLIMIT_DATA = 2;
pub const RLIMIT_STACK = 3;
pub const RLIMIT_CORE = 4;
pub const RLIMIT_AS = 5;
pub const RLIMIT_RSS = RLIMIT_AS;
pub const RLIMIT_MEMLOCK = 6;
pub const RLIMIT_NPROC = 7;
pub const RLIMIT_NOFILE = 8;
pub const RLIM_NLIMITS = 9;
pub const _RLIMIT_POSIX_FLAG = 0x1000;
pub const RLIMIT_WAKEUPS_MONITOR = 0x1;
pub const RLIMIT_CPU_USAGE_MONITOR = 0x2;
pub const RLIMIT_THREAD_CPULIMITS = 0x3;
pub const RLIMIT_FOOTPRINT_INTERVAL = 0x4;
pub const WAKEMON_ENABLE = 0x01;
pub const WAKEMON_DISABLE = 0x02;
pub const WAKEMON_GET_PARAMS = 0x04;
pub const WAKEMON_SET_DEFAULTS = 0x08;
pub const WAKEMON_MAKE_FATAL = 0x10;
pub const CPUMON_MAKE_FATAL = 0x1000;
pub const FOOTPRINT_INTERVAL_RESET = 0x1;
pub const IOPOL_TYPE_DISK = 0;
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = 2;
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = 3;
pub const IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = 4;
pub const IOPOL_SCOPE_PROCESS = 0;
pub const IOPOL_SCOPE_THREAD = 1;
pub const IOPOL_SCOPE_DARWIN_BG = 2;
pub const IOPOL_DEFAULT = 0;
pub const IOPOL_IMPORTANT = 1;
pub const IOPOL_PASSIVE = 2;
pub const IOPOL_THROTTLE = 3;
pub const IOPOL_UTILITY = 4;
pub const IOPOL_STANDARD = 5;
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const IOPOL_NORMAL = IOPOL_IMPORTANT;
pub const IOPOL_ATIME_UPDATES_DEFAULT = 0;
pub const IOPOL_ATIME_UPDATES_OFF = 1;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = 0;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = 1;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = 2;
pub const IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = 0;
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = 1;
pub const WNOHANG = 0x00000001;
pub const WUNTRACED = 0x00000002;
pub fn _W_INT(w: anytype) callconv(.Inline) @TypeOf([*c]c_int.* & w) {
    return [*c]c_int.* & w;
}
pub const WCOREFLAG = 0o0200;
pub fn _WSTATUS(x: anytype) callconv(.Inline) @TypeOf(_W_INT(x) & 0o0177) {
    return _W_INT(x) & 0o0177;
}
pub const _WSTOPPED = 0o0177;
pub fn WEXITSTATUS(x: anytype) callconv(.Inline) @TypeOf((_W_INT(x) >> 8) & 0x000000ff) {
    return (_W_INT(x) >> 8) & 0x000000ff;
}
pub fn WSTOPSIG(x: anytype) callconv(.Inline) @TypeOf(_W_INT(x) >> 8) {
    return _W_INT(x) >> 8;
}
pub fn WIFCONTINUED(x: anytype) callconv(.Inline) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == 0x13)) {
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == 0x13);
}
pub fn WIFSTOPPED(x: anytype) callconv(.Inline) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != 0x13)) {
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != 0x13);
}
pub fn WIFEXITED(x: anytype) callconv(.Inline) @TypeOf(_WSTATUS(x) == 0) {
    return _WSTATUS(x) == 0;
}
pub fn WIFSIGNALED(x: anytype) callconv(.Inline) @TypeOf((_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != 0)) {
    return (_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != 0);
}
pub fn WTERMSIG(x: anytype) callconv(.Inline) @TypeOf(_WSTATUS(x)) {
    return _WSTATUS(x);
}
pub fn WCOREDUMP(x: anytype) callconv(.Inline) @TypeOf(_W_INT(x) & WCOREFLAG) {
    return _W_INT(x) & WCOREFLAG;
}
pub fn W_EXITCODE(ret: anytype, sig: anytype) callconv(.Inline) @TypeOf((ret << 8) | sig) {
    return (ret << 8) | sig;
}
pub fn W_STOPCODE(sig: anytype) callconv(.Inline) @TypeOf((sig << 8) | _WSTOPPED) {
    return (sig << 8) | _WSTOPPED;
}
pub const WEXITED = 0x00000004;
pub const WSTOPPED = 0x00000008;
pub const WCONTINUED = 0x00000010;
pub const WNOWAIT = 0x00000020;
pub const WAIT_ANY = -1;
pub const WAIT_MYPGRP = 0;
pub const _QUAD_HIGHWORD = 1;
pub const _QUAD_LOWWORD = 0;
pub const __DARWIN_LITTLE_ENDIAN = 1234;
pub const __DARWIN_BIG_ENDIAN = 4321;
pub const __DARWIN_PDP_ENDIAN = 3412;
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub fn __DARWIN_OSSwapConstInt16(x: anytype) callconv(.Inline) __uint16_t {
    return @import("std").meta.cast(__uint16_t, ((@import("std").meta.cast(__uint16_t, x) & 0xff00) >> 8) | ((@import("std").meta.cast(__uint16_t, x) & 0x00ff) << 8));
}
pub fn __DARWIN_OSSwapConstInt32(x: anytype) callconv(.Inline) __uint32_t {
    return @import("std").meta.cast(__uint32_t, ((((@import("std").meta.cast(__uint32_t, x) & 0xff000000) >> 24) | ((@import("std").meta.cast(__uint32_t, x) & 0x00ff0000) >> 8)) | ((@import("std").meta.cast(__uint32_t, x) & 0x0000ff00) << 8)) | ((@import("std").meta.cast(__uint32_t, x) & 0x000000ff) << 24));
}
pub fn __DARWIN_OSSwapConstInt64(x: anytype) callconv(.Inline) __uint64_t {
    return @import("std").meta.cast(__uint64_t, ((((((((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x00ff000000000000)) >> 40)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000ff00000000)) >> 8)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000ff000000)) << 8)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000000000ff0000)) << 24)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000000000ff00)) << 40)) | ((@import("std").meta.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000000000ff)) << 56));
}
pub fn __DARWIN_OSSwapInt16(x: anytype) callconv(.Inline) __uint16_t {
    return @import("std").meta.cast(__uint16_t, if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x));
}
pub fn __DARWIN_OSSwapInt32(x: anytype) callconv(.Inline) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x)) {
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x);
}
pub fn __DARWIN_OSSwapInt64(x: anytype) callconv(.Inline) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x)) {
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x);
}
pub fn ntohs(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub fn htons(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub fn ntohl(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub fn htonl(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub fn ntohll(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub fn htonll(x: anytype) callconv(.Inline) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub const w_termsig = w_T.w_Termsig;
pub const w_coredump = w_T.w_Coredump;
pub const w_retcode = w_T.w_Retcode;
pub const w_stopval = w_S.w_Stopval;
pub const w_stopsig = w_S.w_Stopsig;
pub fn __alloca(size: anytype) callconv(.Inline) @TypeOf(__builtin_alloca(size)) {
    return __builtin_alloca(size);
}
pub const EXIT_FAILURE = 1;
pub const EXIT_SUCCESS = 0;
pub const RAND_MAX = 0x7fffffff;
pub const MB_CUR_MAX = __mb_cur_max;
pub const __sort_noescape = __attribute__(__noescape__);
pub const __HAS_FIXED_CHK_PROTOTYPES = 1;
pub fn AV_GCC_VERSION_AT_LEAST(x: anytype, y: anytype) callconv(.Inline) @TypeOf((__GNUC__ > x) or ((__GNUC__ == x) and (__GNUC_MINOR__ >= y))) {
    return (__GNUC__ > x) or ((__GNUC__ == x) and (__GNUC_MINOR__ >= y));
}
pub fn AV_GCC_VERSION_AT_MOST(x: anytype, y: anytype) callconv(.Inline) @TypeOf((__GNUC__ < x) or ((__GNUC__ == x) and (__GNUC_MINOR__ <= y))) {
    return (__GNUC__ < x) or ((__GNUC__ == x) and (__GNUC_MINOR__ <= y));
}
pub fn AV_HAS_BUILTIN(x: anytype) callconv(.Inline) @TypeOf(__has_builtin(x)) {
    return __has_builtin(x);
}
pub const av_warn_unused_result = __attribute__(warn_unused_result);
pub const av_noinline = __attribute__(@"noinline");
pub const av_pure = __attribute__(pure);
pub const av_cold = __attribute__(cold);
pub const attribute_deprecated = __attribute__(deprecated);
pub fn AV_NOWARN_DEPRECATED(code: anytype) callconv(.Inline) @TypeOf(code) {
    return code;
}
pub const av_unused = __attribute__(unused);
pub const av_used = __attribute__(used);
pub const av_alias = __attribute__(may_alias);
pub const av_builtin_constant_p = __builtin_constant_p;
pub fn av_printf_format(fmtpos: anytype, attrpos: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(__printf__, fmtpos, attrpos))) {
    return __attribute__(__format__(__printf__, fmtpos, attrpos));
}
pub const av_noreturn = __attribute__(noreturn);
pub fn AV_STRINGIFY(s: anytype) callconv(.Inline) @TypeOf(AV_TOSTRING(s)) {
    return AV_TOSTRING(s);
}
pub fn AV_JOIN(a: anytype, b: anytype) callconv(.Inline) @TypeOf(AV_GLUE(a, b)) {
    return AV_GLUE(a, b);
}
pub fn FFALIGN(x: anytype, a: anytype) callconv(.Inline) @TypeOf(((x + a) - 1) & ~(a - 1)) {
    return ((x + a) - 1) & ~(a - 1);
}
pub fn AV_VERSION_INT(a: anytype, b: anytype, c: anytype) callconv(.Inline) @TypeOf(((a << 16) | (b << 8)) | c) {
    return ((a << 16) | (b << 8)) | c;
}
pub fn AV_VERSION(a: anytype, b: anytype, c: anytype) callconv(.Inline) @TypeOf(AV_VERSION_DOT(a, b, c)) {
    return AV_VERSION_DOT(a, b, c);
}
pub fn AV_VERSION_MAJOR(a: anytype) callconv(.Inline) @TypeOf(a >> 16) {
    return a >> 16;
}
pub fn AV_VERSION_MINOR(a: anytype) callconv(.Inline) @TypeOf((a & 0x00FF00) >> 8) {
    return (a & 0x00FF00) >> 8;
}
pub fn AV_VERSION_MICRO(a: anytype) callconv(.Inline) @TypeOf(a & 0xFF) {
    return a & 0xFF;
}
pub const LIBAVUTIL_VERSION_MAJOR = 56;
pub const LIBAVUTIL_VERSION_MINOR = 66;
pub const LIBAVUTIL_VERSION_MICRO = 100;
pub const LIBAVUTIL_VERSION_INT = AV_VERSION_INT(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
pub const LIBAVUTIL_VERSION = AV_VERSION(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
pub const LIBAVUTIL_BUILD = LIBAVUTIL_VERSION_INT;
pub const LIBAVUTIL_IDENT = "Lavu" ++ AV_STRINGIFY(LIBAVUTIL_VERSION);
pub const FF_API_VAAPI = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_FRAME_QP = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_PLUS1_MINUS1 = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_ERROR_FRAME = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_PKT_PTS = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_CRYPTO_SIZE_T = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_FRAME_GET_SET = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_PSEUDOPAL = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_CHILD_CLASS_NEXT = LIBAVUTIL_VERSION_MAJOR < 57;
pub const FF_API_D2STR = LIBAVUTIL_VERSION_MAJOR < 58;
pub const FF_API_DECLARE_ALIGNED = LIBAVUTIL_VERSION_MAJOR < 58;
pub const AV_HAVE_BIGENDIAN = 0;
pub const AV_HAVE_FAST_UNALIGNED = 0;
pub fn AV_NE(be: anytype, le: anytype) callconv(.Inline) @TypeOf(le) {
    return le;
}
pub fn RSHIFT(a: anytype, b: anytype) callconv(.Inline) @TypeOf(if (a > 0) (a + ((1 << b) >> 1)) >> b else ((a + ((1 << b) >> 1)) - 1) >> b) {
    return if (a > 0) (a + ((1 << b) >> 1)) >> b else ((a + ((1 << b) >> 1)) - 1) >> b;
}
pub fn ROUNDED_DIV(a: anytype, b: anytype) callconv(.Inline) @TypeOf((if (a >= 0) a + (b >> 1) else a - (b >> 1)) / b) {
    return (if (a >= 0) a + (b >> 1) else a - (b >> 1)) / b;
}
pub fn AV_CEIL_RSHIFT(a: anytype, b: anytype) callconv(.Inline) @TypeOf(if (!(av_builtin_constant_p(b) != 0)) -(-a >> b) else ((a + (1 << b)) - 1) >> b) {
    return if (!(av_builtin_constant_p(b) != 0)) -(-a >> b) else ((a + (1 << b)) - 1) >> b;
}
pub const FF_CEIL_RSHIFT = AV_CEIL_RSHIFT;
pub fn FFUDIV(a: anytype, b: anytype) callconv(.Inline) @TypeOf((if (a > 0) a else (a - b) + 1) / b) {
    return (if (a > 0) a else (a - b) + 1) / b;
}
pub fn FFUMOD(a: anytype, b: anytype) callconv(.Inline) @TypeOf(a - (b * FFUDIV(a, b))) {
    return a - (b * FFUDIV(a, b));
}
pub fn FFABS(a: anytype) callconv(.Inline) @TypeOf(if (a >= 0) a else -a) {
    return if (a >= 0) a else -a;
}
pub fn FFSIGN(a: anytype) callconv(.Inline) @TypeOf(if (a > 0) 1 else -1) {
    return if (a > 0) 1 else -1;
}
pub fn FFNABS(a: anytype) callconv(.Inline) @TypeOf(if (a <= 0) a else -a) {
    return if (a <= 0) a else -a;
}
pub fn FFABSU(a: anytype) callconv(.Inline) @TypeOf(if (a <= 0) -@import("std").meta.cast(c_uint, a) else @import("std").meta.cast(c_uint, a)) {
    return if (a <= 0) -@import("std").meta.cast(c_uint, a) else @import("std").meta.cast(c_uint, a);
}
pub fn FFABS64U(a: anytype) callconv(.Inline) @TypeOf(if (a <= 0) -@import("std").meta.cast(u64, a) else @import("std").meta.cast(u64, a)) {
    return if (a <= 0) -@import("std").meta.cast(u64, a) else @import("std").meta.cast(u64, a);
}
pub fn FFDIFFSIGN(x: anytype, y: anytype) callconv(.Inline) @TypeOf(@boolToInt(x > y) - @boolToInt(x < y)) {
    return @boolToInt(x > y) - @boolToInt(x < y);
}
pub fn FFMAX(a: anytype, b: anytype) callconv(.Inline) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub fn FFMAX3(a: anytype, b: anytype, c: anytype) callconv(.Inline) @TypeOf(FFMAX(FFMAX(a, b), c)) {
    return FFMAX(FFMAX(a, b), c);
}
pub fn FFMIN(a: anytype, b: anytype) callconv(.Inline) @TypeOf(if (a > b) b else a) {
    return if (a > b) b else a;
}
pub fn FFMIN3(a: anytype, b: anytype, c: anytype) callconv(.Inline) @TypeOf(FFMIN(FFMIN(a, b), c)) {
    return FFMIN(FFMIN(a, b), c);
}
pub fn FF_ARRAY_ELEMS(a: anytype) callconv(.Inline) @TypeOf(@import("std").meta.sizeof(a) / @import("std").meta.sizeof(a[0])) {
    return @import("std").meta.sizeof(a) / @import("std").meta.sizeof(a[0]);
}
pub const av_ceil_log2 = av_ceil_log2_c;
pub const av_clip = av_clip_c;
pub const av_clip64 = av_clip64_c;
pub const av_clip_uint8 = av_clip_uint8_c;
pub const av_clip_int8 = av_clip_int8_c;
pub const av_clip_uint16 = av_clip_uint16_c;
pub const av_clip_int16 = av_clip_int16_c;
pub const av_clipl_int32 = av_clipl_int32_c;
pub const av_clip_intp2 = av_clip_intp2_c;
pub const av_clip_uintp2 = av_clip_uintp2_c;
pub const av_mod_uintp2 = av_mod_uintp2_c;
pub const av_sat_add32 = av_sat_add32_c;
pub const av_sat_dadd32 = av_sat_dadd32_c;
pub const av_sat_sub32 = av_sat_sub32_c;
pub const av_sat_dsub32 = av_sat_dsub32_c;
pub const av_sat_add64 = av_sat_add64_c;
pub const av_sat_sub64 = av_sat_sub64_c;
pub const av_clipf = av_clipf_c;
pub const av_clipd = av_clipd_c;
pub const av_popcount = av_popcount_c;
pub const av_popcount64 = av_popcount64_c;
pub const av_parity = av_parity_c;
pub fn MKTAG(a: anytype, b: anytype, c: anytype, d: anytype) callconv(.Inline) @TypeOf(((a | (b << 8)) | (c << 16)) | (@import("std").meta.cast(c_uint, d) << 24)) {
    return ((a | (b << 8)) | (c << 16)) | (@import("std").meta.cast(c_uint, d) << 24);
}
pub fn MKBETAG(a: anytype, b: anytype, c: anytype, d: anytype) callconv(.Inline) @TypeOf(((d | (c << 8)) | (b << 16)) | (@import("std").meta.cast(c_uint, a) << 24)) {
    return ((d | (c << 8)) | (b << 16)) | (@import("std").meta.cast(c_uint, a) << 24);
}
pub fn offsetof(t: anytype, d: anytype) callconv(.Inline) @TypeOf(__builtin_offsetof(t, d)) {
    return __builtin_offsetof(t, d);
}
pub fn AVERROR(e: anytype) callconv(.Inline) @TypeOf(-e) {
    return -e;
}
pub fn AVUNERROR(e: anytype) callconv(.Inline) @TypeOf(-e) {
    return -e;
}
pub fn FFERRTAG(a: anytype, b: anytype, c: anytype, d: anytype) callconv(.Inline) @TypeOf(-@import("std").meta.cast(c_int, MKTAG(a, b, c, d))) {
    return -@import("std").meta.cast(c_int, MKTAG(a, b, c, d));
}
pub const AVERROR_BSF_NOT_FOUND = FFERRTAG(0xF8, 'B', 'S', 'F');
pub const AVERROR_BUG = FFERRTAG('B', 'U', 'G', '!');
pub const AVERROR_BUFFER_TOO_SMALL = FFERRTAG('B', 'U', 'F', 'S');
pub const AVERROR_DECODER_NOT_FOUND = FFERRTAG(0xF8, 'D', 'E', 'C');
pub const AVERROR_DEMUXER_NOT_FOUND = FFERRTAG(0xF8, 'D', 'E', 'M');
pub const AVERROR_ENCODER_NOT_FOUND = FFERRTAG(0xF8, 'E', 'N', 'C');
pub const AVERROR_EOF = FFERRTAG('E', 'O', 'F', ' ');
pub const AVERROR_EXIT = FFERRTAG('E', 'X', 'I', 'T');
pub const AVERROR_EXTERNAL = FFERRTAG('E', 'X', 'T', ' ');
pub const AVERROR_FILTER_NOT_FOUND = FFERRTAG(0xF8, 'F', 'I', 'L');
pub const AVERROR_INVALIDDATA = FFERRTAG('I', 'N', 'D', 'A');
pub const AVERROR_MUXER_NOT_FOUND = FFERRTAG(0xF8, 'M', 'U', 'X');
pub const AVERROR_OPTION_NOT_FOUND = FFERRTAG(0xF8, 'O', 'P', 'T');
pub const AVERROR_PATCHWELCOME = FFERRTAG('P', 'A', 'W', 'E');
pub const AVERROR_PROTOCOL_NOT_FOUND = FFERRTAG(0xF8, 'P', 'R', 'O');
pub const AVERROR_STREAM_NOT_FOUND = FFERRTAG(0xF8, 'S', 'T', 'R');
pub const AVERROR_BUG2 = FFERRTAG('B', 'U', 'G', ' ');
pub const AVERROR_UNKNOWN = FFERRTAG('U', 'N', 'K', 'N');
pub const AVERROR_EXPERIMENTAL = -0x2bb2afa8;
pub const AVERROR_INPUT_CHANGED = -0x636e6701;
pub const AVERROR_OUTPUT_CHANGED = -0x636e6702;
pub const AVERROR_HTTP_BAD_REQUEST = FFERRTAG(0xF8, '4', '0', '0');
pub const AVERROR_HTTP_UNAUTHORIZED = FFERRTAG(0xF8, '4', '0', '1');
pub const AVERROR_HTTP_FORBIDDEN = FFERRTAG(0xF8, '4', '0', '3');
pub const AVERROR_HTTP_NOT_FOUND = FFERRTAG(0xF8, '4', '0', '4');
pub const AVERROR_HTTP_OTHER_4XX = FFERRTAG(0xF8, '4', 'X', 'X');
pub const AVERROR_HTTP_SERVER_ERROR = FFERRTAG(0xF8, '5', 'X', 'X');
pub const AV_ERROR_MAX_STRING_SIZE = 64;
pub fn av_err2str(errnum: anytype) callconv(.Inline) @TypeOf(av_make_error_string(@import("std").mem.zeroInit(u8[AV_ERROR_MAX_STRING_SIZE], .{0}), AV_ERROR_MAX_STRING_SIZE, errnum)) {
    return av_make_error_string(@import("std").mem.zeroInit(u8[AV_ERROR_MAX_STRING_SIZE], .{0}), AV_ERROR_MAX_STRING_SIZE, errnum);
}
pub const av_malloc_attrib = __attribute__(__malloc__);
pub const M_LOG2_10 = 3.32192809488736234787;
pub const M_PHI = 1.61803398874989484820;
pub fn va_start(ap: anytype, param: anytype) callconv(.Inline) @TypeOf(__builtin_va_start(ap, param)) {
    return __builtin_va_start(ap, param);
}
pub fn va_end(ap: anytype) callconv(.Inline) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub fn va_arg(ap: anytype, type_1: anytype) callconv(.Inline) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub fn __va_copy(d: anytype, s: anytype) callconv(.Inline) @TypeOf(__builtin_va_copy(d, s)) {
    return __builtin_va_copy(d, s);
}
pub fn va_copy(dest: anytype, src: anytype) callconv(.Inline) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub const __GNUC_VA_LIST = 1;
pub fn AV_IS_INPUT_DEVICE(category: anytype) callconv(.Inline) @TypeOf(((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_INPUT)) {
    return ((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_INPUT);
}
pub fn AV_IS_OUTPUT_DEVICE(category: anytype) callconv(.Inline) @TypeOf(((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_OUTPUT)) {
    return ((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_OUTPUT);
}
pub const AV_LOG_QUIET = -8;
pub const AV_LOG_PANIC = 0;
pub const AV_LOG_FATAL = 8;
pub const AV_LOG_ERROR = 16;
pub const AV_LOG_WARNING = 24;
pub const AV_LOG_INFO = 32;
pub const AV_LOG_VERBOSE = 40;
pub const AV_LOG_DEBUG = 48;
pub const AV_LOG_TRACE = 56;
pub const AV_LOG_MAX_OFFSET = AV_LOG_TRACE - AV_LOG_QUIET;
pub fn AV_LOG_C(x: anytype) callconv(.Inline) @TypeOf(x << 8) {
    return x << 8;
}
pub const AV_LOG_SKIP_REPEATED = 1;
pub const AV_LOG_PRINT_LEVEL = 2;
pub const AVPALETTE_SIZE = 1024;
pub const AVPALETTE_COUNT = 256;
pub const AV_PIX_FMT_RGB32 = AV_PIX_FMT_NE(ARGB, BGRA);
pub const AV_PIX_FMT_RGB32_1 = AV_PIX_FMT_NE(RGBA, ABGR);
pub const AV_PIX_FMT_BGR32 = AV_PIX_FMT_NE(ABGR, RGBA);
pub const AV_PIX_FMT_BGR32_1 = AV_PIX_FMT_NE(BGRA, ARGB);
pub const AV_PIX_FMT_0RGB32 = AV_PIX_FMT_NE(0 ++ RGB, BGR0);
pub const AV_PIX_FMT_GRAY9 = AV_PIX_FMT_NE(GRAY9BE, GRAY9LE);
pub const AV_PIX_FMT_GRAY10 = AV_PIX_FMT_NE(GRAY10BE, GRAY10LE);
pub const AV_PIX_FMT_GRAY12 = AV_PIX_FMT_NE(GRAY12BE, GRAY12LE);
pub const AV_PIX_FMT_GRAY14 = AV_PIX_FMT_NE(GRAY14BE, GRAY14LE);
pub const AV_PIX_FMT_GRAY16 = AV_PIX_FMT_NE(GRAY16BE, GRAY16LE);
pub const AV_PIX_FMT_YA16 = AV_PIX_FMT_NE(YA16BE, YA16LE);
pub const AV_PIX_FMT_RGB48 = AV_PIX_FMT_NE(RGB48BE, RGB48LE);
pub const AV_PIX_FMT_RGB565 = AV_PIX_FMT_NE(RGB565BE, RGB565LE);
pub const AV_PIX_FMT_RGB555 = AV_PIX_FMT_NE(RGB555BE, RGB555LE);
pub const AV_PIX_FMT_RGB444 = AV_PIX_FMT_NE(RGB444BE, RGB444LE);
pub const AV_PIX_FMT_RGBA64 = AV_PIX_FMT_NE(RGBA64BE, RGBA64LE);
pub const AV_PIX_FMT_BGR48 = AV_PIX_FMT_NE(BGR48BE, BGR48LE);
pub const AV_PIX_FMT_BGR565 = AV_PIX_FMT_NE(BGR565BE, BGR565LE);
pub const AV_PIX_FMT_BGR555 = AV_PIX_FMT_NE(BGR555BE, BGR555LE);
pub const AV_PIX_FMT_BGR444 = AV_PIX_FMT_NE(BGR444BE, BGR444LE);
pub const AV_PIX_FMT_BGRA64 = AV_PIX_FMT_NE(BGRA64BE, BGRA64LE);
pub const AV_PIX_FMT_YUV420P9 = AV_PIX_FMT_NE(YUV420P9BE, YUV420P9LE);
pub const AV_PIX_FMT_YUV422P9 = AV_PIX_FMT_NE(YUV422P9BE, YUV422P9LE);
pub const AV_PIX_FMT_YUV444P9 = AV_PIX_FMT_NE(YUV444P9BE, YUV444P9LE);
pub const AV_PIX_FMT_YUV420P10 = AV_PIX_FMT_NE(YUV420P10BE, YUV420P10LE);
pub const AV_PIX_FMT_YUV422P10 = AV_PIX_FMT_NE(YUV422P10BE, YUV422P10LE);
pub const AV_PIX_FMT_YUV440P10 = AV_PIX_FMT_NE(YUV440P10BE, YUV440P10LE);
pub const AV_PIX_FMT_YUV444P10 = AV_PIX_FMT_NE(YUV444P10BE, YUV444P10LE);
pub const AV_PIX_FMT_YUV420P12 = AV_PIX_FMT_NE(YUV420P12BE, YUV420P12LE);
pub const AV_PIX_FMT_YUV422P12 = AV_PIX_FMT_NE(YUV422P12BE, YUV422P12LE);
pub const AV_PIX_FMT_YUV440P12 = AV_PIX_FMT_NE(YUV440P12BE, YUV440P12LE);
pub const AV_PIX_FMT_YUV444P12 = AV_PIX_FMT_NE(YUV444P12BE, YUV444P12LE);
pub const AV_PIX_FMT_YUV420P14 = AV_PIX_FMT_NE(YUV420P14BE, YUV420P14LE);
pub const AV_PIX_FMT_YUV422P14 = AV_PIX_FMT_NE(YUV422P14BE, YUV422P14LE);
pub const AV_PIX_FMT_YUV444P14 = AV_PIX_FMT_NE(YUV444P14BE, YUV444P14LE);
pub const AV_PIX_FMT_YUV420P16 = AV_PIX_FMT_NE(YUV420P16BE, YUV420P16LE);
pub const AV_PIX_FMT_YUV422P16 = AV_PIX_FMT_NE(YUV422P16BE, YUV422P16LE);
pub const AV_PIX_FMT_YUV444P16 = AV_PIX_FMT_NE(YUV444P16BE, YUV444P16LE);
pub const AV_PIX_FMT_GBRP9 = AV_PIX_FMT_NE(GBRP9BE, GBRP9LE);
pub const AV_PIX_FMT_GBRP10 = AV_PIX_FMT_NE(GBRP10BE, GBRP10LE);
pub const AV_PIX_FMT_GBRP12 = AV_PIX_FMT_NE(GBRP12BE, GBRP12LE);
pub const AV_PIX_FMT_GBRP14 = AV_PIX_FMT_NE(GBRP14BE, GBRP14LE);
pub const AV_PIX_FMT_GBRP16 = AV_PIX_FMT_NE(GBRP16BE, GBRP16LE);
pub const AV_PIX_FMT_GBRAP10 = AV_PIX_FMT_NE(GBRAP10BE, GBRAP10LE);
pub const AV_PIX_FMT_GBRAP12 = AV_PIX_FMT_NE(GBRAP12BE, GBRAP12LE);
pub const AV_PIX_FMT_GBRAP16 = AV_PIX_FMT_NE(GBRAP16BE, GBRAP16LE);
pub const AV_PIX_FMT_BAYER_BGGR16 = AV_PIX_FMT_NE(BAYER_BGGR16BE, BAYER_BGGR16LE);
pub const AV_PIX_FMT_BAYER_RGGB16 = AV_PIX_FMT_NE(BAYER_RGGB16BE, BAYER_RGGB16LE);
pub const AV_PIX_FMT_BAYER_GBRG16 = AV_PIX_FMT_NE(BAYER_GBRG16BE, BAYER_GBRG16LE);
pub const AV_PIX_FMT_BAYER_GRBG16 = AV_PIX_FMT_NE(BAYER_GRBG16BE, BAYER_GRBG16LE);
pub const AV_PIX_FMT_GBRPF32 = AV_PIX_FMT_NE(GBRPF32BE, GBRPF32LE);
pub const AV_PIX_FMT_GBRAPF32 = AV_PIX_FMT_NE(GBRAPF32BE, GBRAPF32LE);
pub const AV_PIX_FMT_GRAYF32 = AV_PIX_FMT_NE(GRAYF32BE, GRAYF32LE);
pub const AV_PIX_FMT_YUVA420P9 = AV_PIX_FMT_NE(YUVA420P9BE, YUVA420P9LE);
pub const AV_PIX_FMT_YUVA422P9 = AV_PIX_FMT_NE(YUVA422P9BE, YUVA422P9LE);
pub const AV_PIX_FMT_YUVA444P9 = AV_PIX_FMT_NE(YUVA444P9BE, YUVA444P9LE);
pub const AV_PIX_FMT_YUVA420P10 = AV_PIX_FMT_NE(YUVA420P10BE, YUVA420P10LE);
pub const AV_PIX_FMT_YUVA422P10 = AV_PIX_FMT_NE(YUVA422P10BE, YUVA422P10LE);
pub const AV_PIX_FMT_YUVA444P10 = AV_PIX_FMT_NE(YUVA444P10BE, YUVA444P10LE);
pub const AV_PIX_FMT_YUVA422P12 = AV_PIX_FMT_NE(YUVA422P12BE, YUVA422P12LE);
pub const AV_PIX_FMT_YUVA444P12 = AV_PIX_FMT_NE(YUVA444P12BE, YUVA444P12LE);
pub const AV_PIX_FMT_YUVA420P16 = AV_PIX_FMT_NE(YUVA420P16BE, YUVA420P16LE);
pub const AV_PIX_FMT_YUVA422P16 = AV_PIX_FMT_NE(YUVA422P16BE, YUVA422P16LE);
pub const AV_PIX_FMT_YUVA444P16 = AV_PIX_FMT_NE(YUVA444P16BE, YUVA444P16LE);
pub const AV_PIX_FMT_XYZ12 = AV_PIX_FMT_NE(XYZ12BE, XYZ12LE);
pub const AV_PIX_FMT_NV20 = AV_PIX_FMT_NE(NV20BE, NV20LE);
pub const AV_PIX_FMT_AYUV64 = AV_PIX_FMT_NE(AYUV64BE, AYUV64LE);
pub const AV_PIX_FMT_P010 = AV_PIX_FMT_NE(P010BE, P010LE);
pub const AV_PIX_FMT_P016 = AV_PIX_FMT_NE(P016BE, P016LE);
pub const AV_PIX_FMT_Y210 = AV_PIX_FMT_NE(Y210BE, Y210LE);
pub const AV_PIX_FMT_X2RGB10 = AV_PIX_FMT_NE(X2RGB10BE, X2RGB10LE);
pub fn av_int_list_length(list: anytype, term: anytype) callconv(.Inline) @TypeOf(av_int_list_length_for_size(@import("std").meta.sizeof(list.*), list, term)) {
    return av_int_list_length_for_size(@import("std").meta.sizeof(list.*), list, term);
}
pub const AV_FOURCC_MAX_STRING_SIZE = 32;
pub fn av_fourcc2str(fourcc: anytype) callconv(.Inline) @TypeOf(av_fourcc_make_string(@import("std").mem.zeroInit(u8[AV_FOURCC_MAX_STRING_SIZE], .{0}), fourcc)) {
    return av_fourcc_make_string(@import("std").mem.zeroInit(u8[AV_FOURCC_MAX_STRING_SIZE], .{0}), fourcc);
}
pub const AV_BUFFER_FLAG_READONLY = 1 << 0;
pub const AV_CPU_FLAG_FORCE = 0x80000000;
pub const AV_CPU_FLAG_MMX = 0x0001;
pub const AV_CPU_FLAG_MMXEXT = 0x0002;
pub const AV_CPU_FLAG_MMX2 = 0x0002;
pub const AV_CPU_FLAG_3DNOW = 0x0004;
pub const AV_CPU_FLAG_SSE = 0x0008;
pub const AV_CPU_FLAG_SSE2 = 0x0010;
pub const AV_CPU_FLAG_SSE2SLOW = 0x40000000;
pub const AV_CPU_FLAG_3DNOWEXT = 0x0020;
pub const AV_CPU_FLAG_SSE3 = 0x0040;
pub const AV_CPU_FLAG_SSE3SLOW = 0x20000000;
pub const AV_CPU_FLAG_SSSE3 = 0x0080;
pub const AV_CPU_FLAG_SSSE3SLOW = 0x4000000;
pub const AV_CPU_FLAG_ATOM = 0x10000000;
pub const AV_CPU_FLAG_SSE4 = 0x0100;
pub const AV_CPU_FLAG_SSE42 = 0x0200;
pub const AV_CPU_FLAG_AESNI = 0x80000;
pub const AV_CPU_FLAG_AVX = 0x4000;
pub const AV_CPU_FLAG_AVXSLOW = 0x8000000;
pub const AV_CPU_FLAG_XOP = 0x0400;
pub const AV_CPU_FLAG_FMA4 = 0x0800;
pub const AV_CPU_FLAG_CMOV = 0x1000;
pub const AV_CPU_FLAG_AVX2 = 0x8000;
pub const AV_CPU_FLAG_FMA3 = 0x10000;
pub const AV_CPU_FLAG_BMI1 = 0x20000;
pub const AV_CPU_FLAG_BMI2 = 0x40000;
pub const AV_CPU_FLAG_AVX512 = 0x100000;
pub const AV_CPU_FLAG_ALTIVEC = 0x0001;
pub const AV_CPU_FLAG_VSX = 0x0002;
pub const AV_CPU_FLAG_POWER8 = 0x0004;
pub const AV_CPU_FLAG_ARMV5TE = 1 << 0;
pub const AV_CPU_FLAG_ARMV6 = 1 << 1;
pub const AV_CPU_FLAG_ARMV6T2 = 1 << 2;
pub const AV_CPU_FLAG_VFP = 1 << 3;
pub const AV_CPU_FLAG_VFPV3 = 1 << 4;
pub const AV_CPU_FLAG_NEON = 1 << 5;
pub const AV_CPU_FLAG_ARMV8 = 1 << 6;
pub const AV_CPU_FLAG_VFP_VM = 1 << 7;
pub const AV_CPU_FLAG_SETEND = 1 << 16;
pub const AV_CPU_FLAG_MMI = 1 << 0;
pub const AV_CPU_FLAG_MSA = 1 << 1;
pub const AV_CH_FRONT_LEFT = 0x00000001;
pub const AV_CH_FRONT_RIGHT = 0x00000002;
pub const AV_CH_FRONT_CENTER = 0x00000004;
pub const AV_CH_LOW_FREQUENCY = 0x00000008;
pub const AV_CH_BACK_LEFT = 0x00000010;
pub const AV_CH_BACK_RIGHT = 0x00000020;
pub const AV_CH_FRONT_LEFT_OF_CENTER = 0x00000040;
pub const AV_CH_FRONT_RIGHT_OF_CENTER = 0x00000080;
pub const AV_CH_BACK_CENTER = 0x00000100;
pub const AV_CH_SIDE_LEFT = 0x00000200;
pub const AV_CH_SIDE_RIGHT = 0x00000400;
pub const AV_CH_TOP_CENTER = 0x00000800;
pub const AV_CH_TOP_FRONT_LEFT = 0x00001000;
pub const AV_CH_TOP_FRONT_CENTER = 0x00002000;
pub const AV_CH_TOP_FRONT_RIGHT = 0x00004000;
pub const AV_CH_TOP_BACK_LEFT = 0x00008000;
pub const AV_CH_TOP_BACK_CENTER = 0x00010000;
pub const AV_CH_TOP_BACK_RIGHT = 0x00020000;
pub const AV_CH_STEREO_LEFT = 0x20000000;
pub const AV_CH_STEREO_RIGHT = 0x40000000;
pub const AV_CH_WIDE_LEFT = @as(c_ulonglong, 0x0000000080000000);
pub const AV_CH_WIDE_RIGHT = @as(c_ulonglong, 0x0000000100000000);
pub const AV_CH_SURROUND_DIRECT_LEFT = @as(c_ulonglong, 0x0000000200000000);
pub const AV_CH_SURROUND_DIRECT_RIGHT = @as(c_ulonglong, 0x0000000400000000);
pub const AV_CH_LOW_FREQUENCY_2 = @as(c_ulonglong, 0x0000000800000000);
pub const AV_CH_TOP_SIDE_LEFT = @as(c_ulonglong, 0x0000001000000000);
pub const AV_CH_TOP_SIDE_RIGHT = @as(c_ulonglong, 0x0000002000000000);
pub const AV_CH_BOTTOM_FRONT_CENTER = @as(c_ulonglong, 0x0000004000000000);
pub const AV_CH_BOTTOM_FRONT_LEFT = @as(c_ulonglong, 0x0000008000000000);
pub const AV_CH_BOTTOM_FRONT_RIGHT = @as(c_ulonglong, 0x0000010000000000);
pub const AV_CH_LAYOUT_NATIVE = @as(c_ulonglong, 0x8000000000000000);
pub const AV_CH_LAYOUT_MONO = AV_CH_FRONT_CENTER;
pub const AV_CH_LAYOUT_STEREO = AV_CH_FRONT_LEFT | AV_CH_FRONT_RIGHT;
pub const AV_CH_LAYOUT_2POINT1 = AV_CH_LAYOUT_STEREO | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_2_1 = AV_CH_LAYOUT_STEREO | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_SURROUND = AV_CH_LAYOUT_STEREO | AV_CH_FRONT_CENTER;
pub const AV_CH_LAYOUT_3POINT1 = AV_CH_LAYOUT_SURROUND | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_4POINT0 = AV_CH_LAYOUT_SURROUND | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_4POINT1 = AV_CH_LAYOUT_4POINT0 | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_2_2 = (AV_CH_LAYOUT_STEREO | AV_CH_SIDE_LEFT) | AV_CH_SIDE_RIGHT;
pub const AV_CH_LAYOUT_QUAD = (AV_CH_LAYOUT_STEREO | AV_CH_BACK_LEFT) | AV_CH_BACK_RIGHT;
pub const AV_CH_LAYOUT_5POINT0 = (AV_CH_LAYOUT_SURROUND | AV_CH_SIDE_LEFT) | AV_CH_SIDE_RIGHT;
pub const AV_CH_LAYOUT_5POINT1 = AV_CH_LAYOUT_5POINT0 | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_5POINT0_BACK = (AV_CH_LAYOUT_SURROUND | AV_CH_BACK_LEFT) | AV_CH_BACK_RIGHT;
pub const AV_CH_LAYOUT_5POINT1_BACK = AV_CH_LAYOUT_5POINT0_BACK | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_6POINT0 = AV_CH_LAYOUT_5POINT0 | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_6POINT0_FRONT = (AV_CH_LAYOUT_2_2 | AV_CH_FRONT_LEFT_OF_CENTER) | AV_CH_FRONT_RIGHT_OF_CENTER;
pub const AV_CH_LAYOUT_HEXAGONAL = AV_CH_LAYOUT_5POINT0_BACK | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_6POINT1 = AV_CH_LAYOUT_5POINT1 | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_6POINT1_BACK = AV_CH_LAYOUT_5POINT1_BACK | AV_CH_BACK_CENTER;
pub const AV_CH_LAYOUT_6POINT1_FRONT = AV_CH_LAYOUT_6POINT0_FRONT | AV_CH_LOW_FREQUENCY;
pub const AV_CH_LAYOUT_7POINT0 = (AV_CH_LAYOUT_5POINT0 | AV_CH_BACK_LEFT) | AV_CH_BACK_RIGHT;
pub const AV_CH_LAYOUT_7POINT0_FRONT = (AV_CH_LAYOUT_5POINT0 | AV_CH_FRONT_LEFT_OF_CENTER) | AV_CH_FRONT_RIGHT_OF_CENTER;
pub const AV_CH_LAYOUT_7POINT1 = (AV_CH_LAYOUT_5POINT1 | AV_CH_BACK_LEFT) | AV_CH_BACK_RIGHT;
pub const AV_CH_LAYOUT_7POINT1_WIDE = (AV_CH_LAYOUT_5POINT1 | AV_CH_FRONT_LEFT_OF_CENTER) | AV_CH_FRONT_RIGHT_OF_CENTER;
pub const AV_CH_LAYOUT_7POINT1_WIDE_BACK = (AV_CH_LAYOUT_5POINT1_BACK | AV_CH_FRONT_LEFT_OF_CENTER) | AV_CH_FRONT_RIGHT_OF_CENTER;
pub const AV_CH_LAYOUT_OCTAGONAL = ((AV_CH_LAYOUT_5POINT0 | AV_CH_BACK_LEFT) | AV_CH_BACK_CENTER) | AV_CH_BACK_RIGHT;
pub const AV_CH_LAYOUT_HEXADECAGONAL = (((((((AV_CH_LAYOUT_OCTAGONAL | AV_CH_WIDE_LEFT) | AV_CH_WIDE_RIGHT) | AV_CH_TOP_BACK_LEFT) | AV_CH_TOP_BACK_RIGHT) | AV_CH_TOP_BACK_CENTER) | AV_CH_TOP_FRONT_CENTER) | AV_CH_TOP_FRONT_LEFT) | AV_CH_TOP_FRONT_RIGHT;
pub const AV_CH_LAYOUT_STEREO_DOWNMIX = AV_CH_STEREO_LEFT | AV_CH_STEREO_RIGHT;
pub const AV_CH_LAYOUT_22POINT2 = (((((((((((((((((AV_CH_LAYOUT_5POINT1_BACK | AV_CH_FRONT_LEFT_OF_CENTER) | AV_CH_FRONT_RIGHT_OF_CENTER) | AV_CH_BACK_CENTER) | AV_CH_LOW_FREQUENCY_2) | AV_CH_SIDE_LEFT) | AV_CH_SIDE_RIGHT) | AV_CH_TOP_FRONT_LEFT) | AV_CH_TOP_FRONT_RIGHT) | AV_CH_TOP_FRONT_CENTER) | AV_CH_TOP_CENTER) | AV_CH_TOP_BACK_LEFT) | AV_CH_TOP_BACK_RIGHT) | AV_CH_TOP_SIDE_LEFT) | AV_CH_TOP_SIDE_RIGHT) | AV_CH_TOP_BACK_CENTER) | AV_CH_BOTTOM_FRONT_CENTER) | AV_CH_BOTTOM_FRONT_LEFT) | AV_CH_BOTTOM_FRONT_RIGHT;
pub const AV_DICT_MATCH_CASE = 1;
pub const AV_DICT_IGNORE_SUFFIX = 2;
pub const AV_DICT_DONT_STRDUP_KEY = 4;
pub const AV_DICT_DONT_STRDUP_VAL = 8;
pub const AV_DICT_DONT_OVERWRITE = 16;
pub const AV_DICT_APPEND = 32;
pub const AV_DICT_MULTIKEY = 64;
pub const AV_NUM_DATA_POINTERS = 8;
pub const AV_FRAME_FLAG_CORRUPT = 1 << 0;
pub const AV_FRAME_FLAG_DISCARD = 1 << 2;
pub const FF_DECODE_ERROR_INVALID_BITSTREAM = 1;
pub const FF_DECODE_ERROR_MISSING_REFERENCE = 2;
pub const FF_DECODE_ERROR_CONCEALMENT_ACTIVE = 4;
pub const FF_DECODE_ERROR_DECODE_SLICES = 8;
pub const AV_CODEC_ID_IFF_BYTERUN1 = AV_CODEC_ID_IFF_ILBM;
pub const AV_CODEC_ID_H265 = AV_CODEC_ID_HEVC;
pub const AV_CODEC_ID_H266 = AV_CODEC_ID_VVC;
pub const LIBAVCODEC_VERSION_MAJOR = 58;
pub const LIBAVCODEC_VERSION_MINOR = 128;
pub const LIBAVCODEC_VERSION_MICRO = 100;
pub const LIBAVCODEC_VERSION_INT = AV_VERSION_INT(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
pub const LIBAVCODEC_VERSION = AV_VERSION(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
pub const LIBAVCODEC_BUILD = LIBAVCODEC_VERSION_INT;
pub const LIBAVCODEC_IDENT = "Lavc" ++ AV_STRINGIFY(LIBAVCODEC_VERSION);
pub const FF_API_AVCTX_TIMEBASE = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_CODED_FRAME = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_SIDEDATA_ONLY_PKT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_VDPAU_PROFILE = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_CONVERGENCE_DURATION = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_AVPICTURE = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_AVPACKET_OLD_API = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_RTP_CALLBACK = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_VBV_DELAY = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_CODER_TYPE = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_STAT_BITS = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_PRIVATE_OPT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_ASS_TIMING = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_OLD_BSF = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_COPY_CONTEXT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_GET_CONTEXT_DEFAULTS = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_NVENC_OLD_NAME = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_STRUCT_VAAPI_CONTEXT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_MERGE_SD_API = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_TAG_STRING = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_GETCHROMA = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_CODEC_GET_SET = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_USER_VISIBLE_AVHWACCEL = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_LOCKMGR = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_NEXT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_UNSANITIZED_BITRATES = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_OPENH264_SLICE_MODE = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_OPENH264_CABAC = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_UNUSED_CODEC_CAPS = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_AVPRIV_PUT_BITS = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_OLD_ENCDEC = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_AVCODEC_PIX_FMT = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_MPV_RC_STRATEGY = LIBAVCODEC_VERSION_MAJOR < 59;
pub const FF_API_THREAD_SAFE_CALLBACKS = LIBAVCODEC_VERSION_MAJOR < 60;
pub const FF_API_DEBUG_MV = LIBAVCODEC_VERSION_MAJOR < 60;
pub const FF_API_GET_FRAME_CLASS = LIBAVCODEC_VERSION_MAJOR < 60;
pub const AV_PKT_DATA_QUALITY_FACTOR = AV_PKT_DATA_QUALITY_STATS;
pub const AV_PKT_FLAG_KEY = 0x0001;
pub const AV_PKT_FLAG_CORRUPT = 0x0002;
pub const AV_PKT_FLAG_DISCARD = 0x0004;
pub const AV_PKT_FLAG_TRUSTED = 0x0008;
pub const AV_PKT_FLAG_DISPOSABLE = 0x0010;
pub const AV_CODEC_CAP_DRAW_HORIZ_BAND = 1 << 0;
pub const AV_CODEC_CAP_DR1 = 1 << 1;
pub const AV_CODEC_CAP_TRUNCATED = 1 << 3;
pub const AV_CODEC_CAP_DELAY = 1 << 5;
pub const AV_CODEC_CAP_SMALL_LAST_FRAME = 1 << 6;
pub const AV_CODEC_CAP_SUBFRAMES = 1 << 8;
pub const AV_CODEC_CAP_EXPERIMENTAL = 1 << 9;
pub const AV_CODEC_CAP_CHANNEL_CONF = 1 << 10;
pub const AV_CODEC_CAP_FRAME_THREADS = 1 << 12;
pub const AV_CODEC_CAP_SLICE_THREADS = 1 << 13;
pub const AV_CODEC_CAP_PARAM_CHANGE = 1 << 14;
pub const AV_CODEC_CAP_AUTO_THREADS = 1 << 15;
pub const AV_CODEC_CAP_VARIABLE_FRAME_SIZE = 1 << 16;
pub const AV_CODEC_CAP_AVOID_PROBING = 1 << 17;
pub const AV_CODEC_CAP_INTRA_ONLY = 0x40000000;
pub const AV_CODEC_CAP_LOSSLESS = 0x80000000;
pub const AV_CODEC_CAP_HARDWARE = 1 << 18;
pub const AV_CODEC_CAP_HYBRID = 1 << 19;
pub const AV_CODEC_CAP_ENCODER_REORDERED_OPAQUE = 1 << 20;
pub const AV_CODEC_CAP_ENCODER_FLUSH = 1 << 21;
pub const AV_CODEC_PROP_INTRA_ONLY = 1 << 0;
pub const AV_CODEC_PROP_LOSSY = 1 << 1;
pub const AV_CODEC_PROP_LOSSLESS = 1 << 2;
pub const AV_CODEC_PROP_REORDER = 1 << 3;
pub const AV_CODEC_PROP_BITMAP_SUB = 1 << 16;
pub const AV_CODEC_PROP_TEXT_SUB = 1 << 17;
pub const AV_INPUT_BUFFER_PADDING_SIZE = 64;
pub const AV_INPUT_BUFFER_MIN_SIZE = 16384;
pub const AV_CODEC_FLAG_UNALIGNED = 1 << 0;
pub const AV_CODEC_FLAG_QSCALE = 1 << 1;
pub const AV_CODEC_FLAG_4MV = 1 << 2;
pub const AV_CODEC_FLAG_OUTPUT_CORRUPT = 1 << 3;
pub const AV_CODEC_FLAG_QPEL = 1 << 4;
pub const AV_CODEC_FLAG_DROPCHANGED = 1 << 5;
pub const AV_CODEC_FLAG_PASS1 = 1 << 9;
pub const AV_CODEC_FLAG_PASS2 = 1 << 10;
pub const AV_CODEC_FLAG_LOOP_FILTER = 1 << 11;
pub const AV_CODEC_FLAG_GRAY = 1 << 13;
pub const AV_CODEC_FLAG_PSNR = 1 << 15;
pub const AV_CODEC_FLAG_TRUNCATED = 1 << 16;
pub const AV_CODEC_FLAG_INTERLACED_DCT = 1 << 18;
pub const AV_CODEC_FLAG_LOW_DELAY = 1 << 19;
pub const AV_CODEC_FLAG_GLOBAL_HEADER = 1 << 22;
pub const AV_CODEC_FLAG_BITEXACT = 1 << 23;
pub const AV_CODEC_FLAG_AC_PRED = 1 << 24;
pub const AV_CODEC_FLAG_INTERLACED_ME = 1 << 29;
pub const AV_CODEC_FLAG_CLOSED_GOP = @as(c_uint, 1) << 31;
pub const AV_CODEC_FLAG2_FAST = 1 << 0;
pub const AV_CODEC_FLAG2_NO_OUTPUT = 1 << 2;
pub const AV_CODEC_FLAG2_LOCAL_HEADER = 1 << 3;
pub const AV_CODEC_FLAG2_DROP_FRAME_TIMECODE = 1 << 13;
pub const AV_CODEC_FLAG2_CHUNKS = 1 << 15;
pub const AV_CODEC_FLAG2_IGNORE_CROP = 1 << 16;
pub const AV_CODEC_FLAG2_SHOW_ALL = 1 << 22;
pub const AV_CODEC_FLAG2_EXPORT_MVS = 1 << 28;
pub const AV_CODEC_FLAG2_SKIP_MANUAL = 1 << 29;
pub const AV_CODEC_FLAG2_RO_FLUSH_NOOP = 1 << 30;
pub const AV_CODEC_EXPORT_DATA_MVS = 1 << 0;
pub const AV_CODEC_EXPORT_DATA_PRFT = 1 << 1;
pub const AV_CODEC_EXPORT_DATA_VIDEO_ENC_PARAMS = 1 << 2;
pub const AV_CODEC_EXPORT_DATA_FILM_GRAIN = 1 << 3;
pub const AV_GET_BUFFER_FLAG_REF = 1 << 0;
pub const FF_COMPRESSION_DEFAULT = -1;
pub const FF_PRED_LEFT = 0;
pub const FF_PRED_PLANE = 1;
pub const FF_PRED_MEDIAN = 2;
pub const FF_CMP_SAD = 0;
pub const FF_CMP_SSE = 1;
pub const FF_CMP_SATD = 2;
pub const FF_CMP_DCT = 3;
pub const FF_CMP_PSNR = 4;
pub const FF_CMP_BIT = 5;
pub const FF_CMP_RD = 6;
pub const FF_CMP_ZERO = 7;
pub const FF_CMP_VSAD = 8;
pub const FF_CMP_VSSE = 9;
pub const FF_CMP_NSSE = 10;
pub const FF_CMP_W53 = 11;
pub const FF_CMP_W97 = 12;
pub const FF_CMP_DCTMAX = 13;
pub const FF_CMP_DCT264 = 14;
pub const FF_CMP_MEDIAN_SAD = 15;
pub const FF_CMP_CHROMA = 256;
pub const SLICE_FLAG_CODED_ORDER = 0x0001;
pub const SLICE_FLAG_ALLOW_FIELD = 0x0002;
pub const SLICE_FLAG_ALLOW_PLANE = 0x0004;
pub const FF_MB_DECISION_SIMPLE = 0;
pub const FF_MB_DECISION_BITS = 1;
pub const FF_MB_DECISION_RD = 2;
pub const FF_CODER_TYPE_VLC = 0;
pub const FF_CODER_TYPE_AC = 1;
pub const FF_CODER_TYPE_RAW = 2;
pub const FF_CODER_TYPE_RLE = 3;
pub const FF_BUG_AUTODETECT = 1;
pub const FF_BUG_XVID_ILACE = 4;
pub const FF_BUG_UMP4 = 8;
pub const FF_BUG_NO_PADDING = 16;
pub const FF_BUG_AMV = 32;
pub const FF_BUG_QPEL_CHROMA = 64;
pub const FF_BUG_STD_QPEL = 128;
pub const FF_BUG_QPEL_CHROMA2 = 256;
pub const FF_BUG_DIRECT_BLOCKSIZE = 512;
pub const FF_BUG_EDGE = 1024;
pub const FF_BUG_HPEL_CHROMA = 2048;
pub const FF_BUG_DC_CLIP = 4096;
pub const FF_BUG_MS = 8192;
pub const FF_BUG_TRUNCATED = 16384;
pub const FF_BUG_IEDGE = 32768;
pub const FF_COMPLIANCE_VERY_STRICT = 2;
pub const FF_COMPLIANCE_STRICT = 1;
pub const FF_COMPLIANCE_NORMAL = 0;
pub const FF_COMPLIANCE_UNOFFICIAL = -1;
pub const FF_COMPLIANCE_EXPERIMENTAL = -2;
pub const FF_EC_GUESS_MVS = 1;
pub const FF_EC_DEBLOCK = 2;
pub const FF_EC_FAVOR_INTER = 256;
pub const FF_DEBUG_PICT_INFO = 1;
pub const FF_DEBUG_RC = 2;
pub const FF_DEBUG_BITSTREAM = 4;
pub const FF_DEBUG_MB_TYPE = 8;
pub const FF_DEBUG_QP = 16;
pub const FF_DEBUG_DCT_COEFF = 0x00000040;
pub const FF_DEBUG_SKIP = 0x00000080;
pub const FF_DEBUG_STARTCODE = 0x00000100;
pub const FF_DEBUG_ER = 0x00000400;
pub const FF_DEBUG_MMCO = 0x00000800;
pub const FF_DEBUG_BUGS = 0x00001000;
pub const FF_DEBUG_BUFFERS = 0x00008000;
pub const FF_DEBUG_THREADS = 0x00010000;
pub const FF_DEBUG_GREEN_MD = 0x00800000;
pub const FF_DEBUG_NOMC = 0x01000000;
pub const AV_EF_CRCCHECK = 1 << 0;
pub const AV_EF_BITSTREAM = 1 << 1;
pub const AV_EF_BUFFER = 1 << 2;
pub const AV_EF_EXPLODE = 1 << 3;
pub const AV_EF_IGNORE_ERR = 1 << 15;
pub const AV_EF_CAREFUL = 1 << 16;
pub const AV_EF_COMPLIANT = 1 << 17;
pub const AV_EF_AGGRESSIVE = 1 << 18;
pub const FF_DCT_AUTO = 0;
pub const FF_DCT_FASTINT = 1;
pub const FF_DCT_INT = 2;
pub const FF_DCT_MMX = 3;
pub const FF_DCT_ALTIVEC = 5;
pub const FF_DCT_FAAN = 6;
pub const FF_IDCT_AUTO = 0;
pub const FF_IDCT_INT = 1;
pub const FF_IDCT_SIMPLE = 2;
pub const FF_IDCT_SIMPLEMMX = 3;
pub const FF_IDCT_ARM = 7;
pub const FF_IDCT_ALTIVEC = 8;
pub const FF_IDCT_SIMPLEARM = 10;
pub const FF_IDCT_XVID = 14;
pub const FF_IDCT_SIMPLEARMV5TE = 16;
pub const FF_IDCT_SIMPLEARMV6 = 17;
pub const FF_IDCT_FAAN = 20;
pub const FF_IDCT_SIMPLENEON = 22;
pub const FF_IDCT_NONE = 24;
pub const FF_IDCT_SIMPLEAUTO = 128;
pub const FF_THREAD_FRAME = 1;
pub const FF_THREAD_SLICE = 2;
pub const FF_PROFILE_UNKNOWN = -99;
pub const FF_PROFILE_RESERVED = -100;
pub const FF_PROFILE_AAC_MAIN = 0;
pub const FF_PROFILE_AAC_LOW = 1;
pub const FF_PROFILE_AAC_SSR = 2;
pub const FF_PROFILE_AAC_LTP = 3;
pub const FF_PROFILE_AAC_HE = 4;
pub const FF_PROFILE_AAC_HE_V2 = 28;
pub const FF_PROFILE_AAC_LD = 22;
pub const FF_PROFILE_AAC_ELD = 38;
pub const FF_PROFILE_MPEG2_AAC_LOW = 128;
pub const FF_PROFILE_MPEG2_AAC_HE = 131;
pub const FF_PROFILE_DNXHD = 0;
pub const FF_PROFILE_DNXHR_LB = 1;
pub const FF_PROFILE_DNXHR_SQ = 2;
pub const FF_PROFILE_DNXHR_HQ = 3;
pub const FF_PROFILE_DNXHR_HQX = 4;
pub const FF_PROFILE_DNXHR_444 = 5;
pub const FF_PROFILE_DTS = 20;
pub const FF_PROFILE_DTS_ES = 30;
pub const FF_PROFILE_DTS_96_24 = 40;
pub const FF_PROFILE_DTS_HD_HRA = 50;
pub const FF_PROFILE_DTS_HD_MA = 60;
pub const FF_PROFILE_DTS_EXPRESS = 70;
pub const FF_PROFILE_MPEG2_422 = 0;
pub const FF_PROFILE_MPEG2_HIGH = 1;
pub const FF_PROFILE_MPEG2_SS = 2;
pub const FF_PROFILE_MPEG2_SNR_SCALABLE = 3;
pub const FF_PROFILE_MPEG2_MAIN = 4;
pub const FF_PROFILE_MPEG2_SIMPLE = 5;
pub const FF_PROFILE_H264_CONSTRAINED = 1 << 9;
pub const FF_PROFILE_H264_INTRA = 1 << 11;
pub const FF_PROFILE_H264_BASELINE = 66;
pub const FF_PROFILE_H264_CONSTRAINED_BASELINE = 66 | FF_PROFILE_H264_CONSTRAINED;
pub const FF_PROFILE_H264_MAIN = 77;
pub const FF_PROFILE_H264_EXTENDED = 88;
pub const FF_PROFILE_H264_HIGH = 100;
pub const FF_PROFILE_H264_HIGH_10 = 110;
pub const FF_PROFILE_H264_HIGH_10_INTRA = 110 | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_MULTIVIEW_HIGH = 118;
pub const FF_PROFILE_H264_HIGH_422 = 122;
pub const FF_PROFILE_H264_HIGH_422_INTRA = 122 | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_STEREO_HIGH = 128;
pub const FF_PROFILE_H264_HIGH_444 = 144;
pub const FF_PROFILE_H264_HIGH_444_PREDICTIVE = 244;
pub const FF_PROFILE_H264_HIGH_444_INTRA = 244 | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_CAVLC_444 = 44;
pub const FF_PROFILE_VC1_SIMPLE = 0;
pub const FF_PROFILE_VC1_MAIN = 1;
pub const FF_PROFILE_VC1_COMPLEX = 2;
pub const FF_PROFILE_VC1_ADVANCED = 3;
pub const FF_PROFILE_MPEG4_SIMPLE = 0;
pub const FF_PROFILE_MPEG4_SIMPLE_SCALABLE = 1;
pub const FF_PROFILE_MPEG4_CORE = 2;
pub const FF_PROFILE_MPEG4_MAIN = 3;
pub const FF_PROFILE_MPEG4_N_BIT = 4;
pub const FF_PROFILE_MPEG4_SCALABLE_TEXTURE = 5;
pub const FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION = 6;
pub const FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE = 7;
pub const FF_PROFILE_MPEG4_HYBRID = 8;
pub const FF_PROFILE_MPEG4_ADVANCED_REAL_TIME = 9;
pub const FF_PROFILE_MPEG4_CORE_SCALABLE = 10;
pub const FF_PROFILE_MPEG4_ADVANCED_CODING = 11;
pub const FF_PROFILE_MPEG4_ADVANCED_CORE = 12;
pub const FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE = 13;
pub const FF_PROFILE_MPEG4_SIMPLE_STUDIO = 14;
pub const FF_PROFILE_MPEG4_ADVANCED_SIMPLE = 15;
pub const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0 = 1;
pub const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1 = 2;
pub const FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION = 32768;
pub const FF_PROFILE_JPEG2000_DCINEMA_2K = 3;
pub const FF_PROFILE_JPEG2000_DCINEMA_4K = 4;
pub const FF_PROFILE_VP9_0 = 0;
pub const FF_PROFILE_VP9_1 = 1;
pub const FF_PROFILE_VP9_2 = 2;
pub const FF_PROFILE_VP9_3 = 3;
pub const FF_PROFILE_HEVC_MAIN = 1;
pub const FF_PROFILE_HEVC_MAIN_10 = 2;
pub const FF_PROFILE_HEVC_MAIN_STILL_PICTURE = 3;
pub const FF_PROFILE_HEVC_REXT = 4;
pub const FF_PROFILE_VVC_MAIN_10 = 1;
pub const FF_PROFILE_VVC_MAIN_10_444 = 33;
pub const FF_PROFILE_AV1_MAIN = 0;
pub const FF_PROFILE_AV1_HIGH = 1;
pub const FF_PROFILE_AV1_PROFESSIONAL = 2;
pub const FF_PROFILE_MJPEG_HUFFMAN_BASELINE_DCT = 0xc0;
pub const FF_PROFILE_MJPEG_HUFFMAN_EXTENDED_SEQUENTIAL_DCT = 0xc1;
pub const FF_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT = 0xc2;
pub const FF_PROFILE_MJPEG_HUFFMAN_LOSSLESS = 0xc3;
pub const FF_PROFILE_MJPEG_JPEG_LS = 0xf7;
pub const FF_PROFILE_SBC_MSBC = 1;
pub const FF_PROFILE_PRORES_PROXY = 0;
pub const FF_PROFILE_PRORES_LT = 1;
pub const FF_PROFILE_PRORES_STANDARD = 2;
pub const FF_PROFILE_PRORES_HQ = 3;
pub const FF_PROFILE_PRORES_4444 = 4;
pub const FF_PROFILE_PRORES_XQ = 5;
pub const FF_PROFILE_ARIB_PROFILE_A = 0;
pub const FF_PROFILE_ARIB_PROFILE_C = 1;
pub const FF_PROFILE_KLVA_SYNC = 0;
pub const FF_PROFILE_KLVA_ASYNC = 1;
pub const FF_LEVEL_UNKNOWN = -99;
pub const FF_SUB_CHARENC_MODE_DO_NOTHING = -1;
pub const FF_SUB_CHARENC_MODE_AUTOMATIC = 0;
pub const FF_SUB_CHARENC_MODE_PRE_DECODER = 1;
pub const FF_SUB_CHARENC_MODE_IGNORE = 2;
pub const FF_DEBUG_VIS_MV_P_FOR = 0x00000001;
pub const FF_DEBUG_VIS_MV_B_FOR = 0x00000002;
pub const FF_DEBUG_VIS_MV_B_BACK = 0x00000004;
pub const FF_CODEC_PROPERTY_LOSSLESS = 0x00000001;
pub const FF_CODEC_PROPERTY_CLOSED_CAPTIONS = 0x00000002;
pub const FF_SUB_TEXT_FMT_ASS = 0;
pub const FF_SUB_TEXT_FMT_ASS_WITH_TIMINGS = 1;
pub const AV_HWACCEL_CODEC_CAP_EXPERIMENTAL = 0x0200;
pub const AV_HWACCEL_FLAG_IGNORE_LEVEL = 1 << 0;
pub const AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH = 1 << 1;
pub const AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH = 1 << 2;
pub const AV_SUBTITLE_FLAG_FORCED = 0x00000001;
pub const AV_PARSER_PTS_NB = 4;
pub const PARSER_FLAG_COMPLETE_FRAMES = 0x0001;
pub const PARSER_FLAG_ONCE = 0x0002;
pub const PARSER_FLAG_FETCHED_OFFSET = 0x0004;
pub const PARSER_FLAG_USE_CODEC_TS = 0x1000;
pub const _STRUCT_TIMESPEC = struct_timespec;
pub const CLOCKS_PER_SEC = 1000000;
pub const CLOCK_REALTIME = _CLOCK_REALTIME;
pub const CLOCK_MONOTONIC = _CLOCK_MONOTONIC;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;
pub const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const TIME_UTC = 1;
pub const LIBAVFORMAT_VERSION_MAJOR = 58;
pub const LIBAVFORMAT_VERSION_MINOR = 70;
pub const LIBAVFORMAT_VERSION_MICRO = 100;
pub const LIBAVFORMAT_VERSION_INT = AV_VERSION_INT(LIBAVFORMAT_VERSION_MAJOR, LIBAVFORMAT_VERSION_MINOR, LIBAVFORMAT_VERSION_MICRO);
pub const LIBAVFORMAT_VERSION = AV_VERSION(LIBAVFORMAT_VERSION_MAJOR, LIBAVFORMAT_VERSION_MINOR, LIBAVFORMAT_VERSION_MICRO);
pub const LIBAVFORMAT_BUILD = LIBAVFORMAT_VERSION_INT;
pub const LIBAVFORMAT_IDENT = "Lavf" ++ AV_STRINGIFY(LIBAVFORMAT_VERSION);
pub const FF_API_COMPUTE_PKT_FIELDS2 = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_OLD_OPEN_CALLBACKS = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_LAVF_AVCTX = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_HTTP_USER_AGENT = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_HLS_WRAP = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_HLS_USE_LOCALTIME = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_LAVF_KEEPSIDE_FLAG = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_OLD_ROTATE_API = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_FORMAT_GET_SET = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_OLD_AVIO_EOF_0 = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_LAVF_FFSERVER = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_FORMAT_FILENAME = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_OLD_RTSP_OPTIONS = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_DASH_MIN_SEG_DURATION = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_LAVF_MP4A_LATM = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_AVIOFORMAT = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_DEMUXER_OPEN = LIBAVFORMAT_VERSION_MAJOR < 59;
pub const FF_API_LAVF_PRIV_OPT = LIBAVFORMAT_VERSION_MAJOR < 60;
pub const FF_API_R_FRAME_RATE = 1;
pub const AVIO_SEEKABLE_NORMAL = 1 << 0;
pub const AVIO_SEEKABLE_TIME = 1 << 1;
pub const AVSEEK_SIZE = 0x10000;
pub const AVSEEK_FORCE = 0x20000;
pub const AVIO_FLAG_READ = 1;
pub const AVIO_FLAG_WRITE = 2;
pub const AVIO_FLAG_READ_WRITE = AVIO_FLAG_READ | AVIO_FLAG_WRITE;
pub const AVIO_FLAG_NONBLOCK = 8;
pub const AVIO_FLAG_DIRECT = 0x8000;
pub const AVPROBE_SCORE_RETRY = AVPROBE_SCORE_MAX / 4;
pub const AVPROBE_SCORE_STREAM_RETRY = (AVPROBE_SCORE_MAX / 4) - 1;
pub const AVPROBE_SCORE_EXTENSION = 50;
pub const AVPROBE_SCORE_MIME = 75;
pub const AVPROBE_SCORE_MAX = 100;
pub const AVPROBE_PADDING_SIZE = 32;
pub const AVFMT_NOFILE = 0x0001;
pub const AVFMT_NEEDNUMBER = 0x0002;
pub const AVFMT_SHOW_IDS = 0x0008;
pub const AVFMT_GLOBALHEADER = 0x0040;
pub const AVFMT_NOTIMESTAMPS = 0x0080;
pub const AVFMT_GENERIC_INDEX = 0x0100;
pub const AVFMT_TS_DISCONT = 0x0200;
pub const AVFMT_VARIABLE_FPS = 0x0400;
pub const AVFMT_NODIMENSIONS = 0x0800;
pub const AVFMT_NOSTREAMS = 0x1000;
pub const AVFMT_NOBINSEARCH = 0x2000;
pub const AVFMT_NOGENSEARCH = 0x4000;
pub const AVFMT_NO_BYTE_SEEK = 0x8000;
pub const AVFMT_ALLOW_FLUSH = 0x10000;
pub const AVFMT_TS_NONSTRICT = 0x20000;
pub const AVFMT_TS_NEGATIVE = 0x40000;
pub const AVFMT_SEEK_TO_PTS = 0x4000000;
pub const AVINDEX_KEYFRAME = 0x0001;
pub const AVINDEX_DISCARD_FRAME = 0x0002;
pub const AV_DISPOSITION_DEFAULT = 0x0001;
pub const AV_DISPOSITION_DUB = 0x0002;
pub const AV_DISPOSITION_ORIGINAL = 0x0004;
pub const AV_DISPOSITION_COMMENT = 0x0008;
pub const AV_DISPOSITION_LYRICS = 0x0010;
pub const AV_DISPOSITION_KARAOKE = 0x0020;
pub const AV_DISPOSITION_FORCED = 0x0040;
pub const AV_DISPOSITION_HEARING_IMPAIRED = 0x0080;
pub const AV_DISPOSITION_VISUAL_IMPAIRED = 0x0100;
pub const AV_DISPOSITION_CLEAN_EFFECTS = 0x0200;
pub const AV_DISPOSITION_ATTACHED_PIC = 0x0400;
pub const AV_DISPOSITION_TIMED_THUMBNAILS = 0x0800;
pub const AV_DISPOSITION_CAPTIONS = 0x10000;
pub const AV_DISPOSITION_DESCRIPTIONS = 0x20000;
pub const AV_DISPOSITION_METADATA = 0x40000;
pub const AV_DISPOSITION_DEPENDENT = 0x80000;
pub const AV_DISPOSITION_STILL_IMAGE = 0x100000;
pub const AV_PTS_WRAP_IGNORE = 0;
pub const AV_PTS_WRAP_ADD_OFFSET = 1;
pub const AV_PTS_WRAP_SUB_OFFSET = -1;
pub const AVSTREAM_EVENT_FLAG_METADATA_UPDATED = 0x0001;
pub const AVSTREAM_EVENT_FLAG_NEW_PACKETS = 1 << 1;
pub const AV_PROGRAM_RUNNING = 1;
pub const AVFMTCTX_NOHEADER = 0x0001;
pub const AVFMTCTX_UNSEEKABLE = 0x0002;
pub const AVFMT_FLAG_GENPTS = 0x0001;
pub const AVFMT_FLAG_IGNIDX = 0x0002;
pub const AVFMT_FLAG_NONBLOCK = 0x0004;
pub const AVFMT_FLAG_IGNDTS = 0x0008;
pub const AVFMT_FLAG_NOFILLIN = 0x0010;
pub const AVFMT_FLAG_NOPARSE = 0x0020;
pub const AVFMT_FLAG_NOBUFFER = 0x0040;
pub const AVFMT_FLAG_CUSTOM_IO = 0x0080;
pub const AVFMT_FLAG_DISCARD_CORRUPT = 0x0100;
pub const AVFMT_FLAG_FLUSH_PACKETS = 0x0200;
pub const AVFMT_FLAG_BITEXACT = 0x0400;
pub const AVFMT_FLAG_MP4A_LATM = 0x8000;
pub const AVFMT_FLAG_SORT_DTS = 0x10000;
pub const AVFMT_FLAG_PRIV_OPT = 0x20000;
pub const AVFMT_FLAG_KEEP_SIDE_DATA = 0x40000;
pub const AVFMT_FLAG_FAST_SEEK = 0x80000;
pub const AVFMT_FLAG_SHORTEST = 0x100000;
pub const AVFMT_FLAG_AUTO_BSF = 0x200000;
pub const FF_FDEBUG_TS = 0x0001;
pub const AVFMT_EVENT_FLAG_METADATA_UPDATED = 0x0001;
pub const AVFMT_AVOID_NEG_TS_AUTO = -1;
pub const AVFMT_AVOID_NEG_TS_MAKE_NON_NEGATIVE = 1;
pub const AVFMT_AVOID_NEG_TS_MAKE_ZERO = 2;
pub const AVSEEK_FLAG_BACKWARD = 1;
pub const AVSEEK_FLAG_BYTE = 2;
pub const AVSEEK_FLAG_ANY = 4;
pub const AVSEEK_FLAG_FRAME = 8;
pub const AVSTREAM_INIT_IN_WRITE_HEADER = 0;
pub const AVSTREAM_INIT_IN_INIT_OUTPUT = 1;
pub const AV_FRAME_FILENAME_FLAGS_MULTIPLE = 1;
pub const __va_list_tag = struct___va_list_tag;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const AVMediaType = enum_AVMediaType;
pub const AVPictureType = enum_AVPictureType;
pub const __float2 = struct___float2;
pub const __double2 = struct___double2;
pub const exception = struct_exception;
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const __darwin_i386_thread_state = struct___darwin_i386_thread_state;
pub const __darwin_fp_control = struct___darwin_fp_control;
pub const __darwin_fp_status = struct___darwin_fp_status;
pub const __darwin_mmst_reg = struct___darwin_mmst_reg;
pub const __darwin_xmm_reg = struct___darwin_xmm_reg;
pub const __darwin_ymm_reg = struct___darwin_ymm_reg;
pub const __darwin_zmm_reg = struct___darwin_zmm_reg;
pub const __darwin_opmask_reg = struct___darwin_opmask_reg;
pub const __darwin_i386_float_state = struct___darwin_i386_float_state;
pub const __darwin_i386_avx_state = struct___darwin_i386_avx_state;
pub const __darwin_i386_avx512_state = struct___darwin_i386_avx512_state;
pub const __darwin_i386_exception_state = struct___darwin_i386_exception_state;
pub const __darwin_x86_debug_state32 = struct___darwin_x86_debug_state32;
pub const __x86_pagein_state = struct___x86_pagein_state;
pub const __darwin_x86_thread_state64 = struct___darwin_x86_thread_state64;
pub const __darwin_x86_thread_full_state64 = struct___darwin_x86_thread_full_state64;
pub const __darwin_x86_float_state64 = struct___darwin_x86_float_state64;
pub const __darwin_x86_avx_state64 = struct___darwin_x86_avx_state64;
pub const __darwin_x86_avx512_state64 = struct___darwin_x86_avx512_state64;
pub const __darwin_x86_exception_state64 = struct___darwin_x86_exception_state64;
pub const __darwin_x86_debug_state64 = struct___darwin_x86_debug_state64;
pub const __darwin_x86_cpmu_state64 = struct___darwin_x86_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext_avx32 = struct___darwin_mcontext_avx32;
pub const __darwin_mcontext_avx512_32 = struct___darwin_mcontext_avx512_32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_mcontext64_full = struct___darwin_mcontext64_full;
pub const __darwin_mcontext_avx64 = struct___darwin_mcontext_avx64;
pub const __darwin_mcontext_avx64_full = struct___darwin_mcontext_avx64_full;
pub const __darwin_mcontext_avx512_64 = struct___darwin_mcontext_avx512_64;
pub const __darwin_mcontext_avx512_64_full = struct___darwin_mcontext_avx512_64_full;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigaction = struct_sigaction;
pub const sigvec = struct_sigvec;
pub const sigstack = struct_sigstack;
pub const timeval = struct_timeval;
pub const rusage = struct_rusage;
pub const rusage_info_v0 = struct_rusage_info_v0;
pub const rusage_info_v1 = struct_rusage_info_v1;
pub const rusage_info_v2 = struct_rusage_info_v2;
pub const rusage_info_v3 = struct_rusage_info_v3;
pub const rusage_info_v4 = struct_rusage_info_v4;
pub const rlimit = struct_rlimit;
pub const proc_rlimit_control_wakeupmon = struct_proc_rlimit_control_wakeupmon;
pub const av_intfloat32 = union_av_intfloat32;
pub const av_intfloat64 = union_av_intfloat64;
pub const AVRounding = enum_AVRounding;
pub const AVOptionRanges = struct_AVOptionRanges;
pub const AVOption = struct_AVOption;
pub const AVPixelFormat = enum_AVPixelFormat;
pub const AVColorPrimaries = enum_AVColorPrimaries;
pub const AVColorTransferCharacteristic = enum_AVColorTransferCharacteristic;
pub const AVColorSpace = enum_AVColorSpace;
pub const AVColorRange = enum_AVColorRange;
pub const AVChromaLocation = enum_AVChromaLocation;
pub const AVSampleFormat = enum_AVSampleFormat;
pub const AVMatrixEncoding = enum_AVMatrixEncoding;
pub const AVBPrint = struct_AVBPrint;
pub const AVFrameSideDataType = enum_AVFrameSideDataType;
pub const AVActiveFormatDescription = enum_AVActiveFormatDescription;
pub const AVHWDeviceType = enum_AVHWDeviceType;
pub const AVHWFrameTransferDirection = enum_AVHWFrameTransferDirection;
pub const AVCodecID = enum_AVCodecID;
pub const AVFieldOrder = enum_AVFieldOrder;
pub const AVPacketSideDataType = enum_AVPacketSideDataType;
pub const AVSideDataParamChangeFlags = enum_AVSideDataParamChangeFlags;
pub const AVSubtitleType = enum_AVSubtitleType;
pub const AVCodecHWConfigInternal = struct_AVCodecHWConfigInternal;
pub const AVCodecInternal = struct_AVCodecInternal;
pub const AVAudioServiceType = enum_AVAudioServiceType;
pub const MpegEncContext = struct_MpegEncContext;
pub const AVDiscard = enum_AVDiscard;
pub const AVPictureStructure = enum_AVPictureStructure;
pub const AVLockOp = enum_AVLockOp;
pub const timespec = struct_timespec;
pub const tm = struct_tm;
pub const AVIODirEntryType = enum_AVIODirEntryType;
pub const URLContext = struct_URLContext;
pub const AVIODataMarkerType = enum_AVIODataMarkerType;
pub const AVCodecTag = struct_AVCodecTag;
pub const AVDeviceInfoList = struct_AVDeviceInfoList;
pub const AVDeviceCapabilitiesQuery = struct_AVDeviceCapabilitiesQuery;
pub const AVStreamParseType = enum_AVStreamParseType;
pub const AVDurationEstimationMethod = enum_AVDurationEstimationMethod;
pub const AVTimebaseSource = enum_AVTimebaseSource;
