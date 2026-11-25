const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
pub const time_t = c_longlong;
pub const struct___clockid = opaque {
    pub const clock_getres = __root.clock_getres;
    pub const clock_gettime = __root.clock_gettime;
    pub const clock_nanosleep = __root.clock_nanosleep;
    pub const getres = __root.clock_getres;
    pub const gettime = __root.clock_gettime;
};
pub const clockid_t = ?*const struct___clockid;
pub const clock_t = c_longlong;
pub const timer_t = ?*anyopaque;
pub const suseconds_t = c_longlong;
pub const struct_timeval = extern struct {
    tv_sec: time_t = 0,
    tv_usec: suseconds_t = 0,
};
pub const struct_timespec = extern struct {
    tv_sec: time_t = 0,
    tv_nsec: c_long = 0,
    pub const timespec_get = __root.timespec_get;
    pub const nanosleep = __root.nanosleep;
    pub const get = __root.timespec_get;
};
pub const pid_t = c_int;
pub const struct___locale_struct = opaque {};
pub const locale_t = ?*struct___locale_struct;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque = null,
    iov_len: usize = 0,
};
pub const struct_tm = extern struct {
    tm_sec: c_int = 0,
    tm_min: c_int = 0,
    tm_hour: c_int = 0,
    tm_mday: c_int = 0,
    tm_mon: c_int = 0,
    tm_year: c_int = 0,
    tm_wday: c_int = 0,
    tm_yday: c_int = 0,
    tm_isdst: c_int = 0,
    tm_gmtoff: c_int = 0,
    tm_zone: [*c]const u8 = null,
    __tm_nsec: c_int = 0,
    pub const mktime = __root.mktime;
    pub const asctime = __root.asctime;
    pub const asctime_r = __root.asctime_r;
    pub const timegm = __root.timegm;
    pub const r = __root.asctime_r;
};
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const int_least64_t = c_longlong;
pub const int_least32_t = c_int;
pub const int_least16_t = c_short;
pub const int_least8_t = i8;
pub const uint_least64_t = c_ulonglong;
pub const uint_least32_t = c_uint;
pub const uint_least16_t = c_ushort;
pub const uint_least8_t = u8;
pub const int_fast64_t = c_longlong;
pub const int_fast32_t = c_int;
pub const int_fast16_t = c_short;
pub const int_fast8_t = i8;
pub const uint_fast64_t = c_ulonglong;
pub const uint_fast32_t = c_uint;
pub const uint_fast16_t = c_ushort;
pub const uint_fast8_t = u8;
pub const int128_t = i128;
pub const uint128_t = u128;
pub const int_fast128_t = i128;
pub const uint_fast128_t = u128;
pub const int_least128_t = i128;
pub const uint_least128_t = u128;
comptime {
    if (!(@alignOf(i8) == @as(c_ulong, 1))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(u8) == @as(c_ulong, 1))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(i16) == @as(c_ulong, 2))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(u16) == @as(c_ulong, 2))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(i32) == @as(c_ulong, 4))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(u32) == @as(c_ulong, 4))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(i64) == @as(c_ulong, 8))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(u64) == @as(c_ulong, 8))) @compileError("static assertion failed \"non-wasi data layout\"");
}
comptime {
    if (!(@alignOf(?*anyopaque) == @as(c_ulong, 4))) @compileError("static assertion failed \"non-wasi data layout\"");
}
pub const __wasi_size_t = c_ulong;
comptime {
    if (!(@sizeOf(__wasi_size_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_size_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_filesize_t = u64;
comptime {
    if (!(@sizeOf(__wasi_filesize_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_filesize_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_timestamp_t = u64;
comptime {
    if (!(@sizeOf(__wasi_timestamp_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_timestamp_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_clockid_t = u32;
comptime {
    if (!(@sizeOf(__wasi_clockid_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_clockid_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_errno_t = u16;
comptime {
    if (!(@sizeOf(__wasi_errno_t) == @as(c_ulong, 2))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_errno_t) == @as(c_ulong, 2))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_rights_t = u64;
pub const __wasi_fd_t = c_int;
comptime {
    if (!(@sizeOf(__wasi_fd_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_fd_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const struct___wasi_iovec_t = extern struct {
    buf: [*c]u8 = null,
    buf_len: __wasi_size_t = 0,
};
pub const __wasi_iovec_t = struct___wasi_iovec_t;
comptime {
    if (!(@sizeOf(__wasi_iovec_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_iovec_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_iovec_t, @ptrFromInt(0)).buf) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_iovec_t, @ptrFromInt(0)).buf_len) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const struct___wasi_ciovec_t = extern struct {
    buf: [*c]const u8 = null,
    buf_len: __wasi_size_t = 0,
};
pub const __wasi_ciovec_t = struct___wasi_ciovec_t;
comptime {
    if (!(@sizeOf(__wasi_ciovec_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_ciovec_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_ciovec_t, @ptrFromInt(0)).buf) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_ciovec_t, @ptrFromInt(0)).buf_len) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_filedelta_t = i64;
comptime {
    if (!(@sizeOf(__wasi_filedelta_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_filedelta_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_whence_t = u8;
comptime {
    if (!(@sizeOf(__wasi_whence_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_whence_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_dircookie_t = u64;
comptime {
    if (!(@sizeOf(__wasi_dircookie_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_dircookie_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_dirnamlen_t = u32;
comptime {
    if (!(@sizeOf(__wasi_dirnamlen_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_dirnamlen_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_inode_t = u64;
comptime {
    if (!(@sizeOf(__wasi_inode_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_inode_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_filetype_t = u8;
comptime {
    if (!(@sizeOf(__wasi_filetype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_filetype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const struct___wasi_dirent_t = extern struct {
    d_next: __wasi_dircookie_t = 0,
    d_ino: __wasi_inode_t = 0,
    d_namlen: __wasi_dirnamlen_t = 0,
    d_type: __wasi_filetype_t = 0,
};
pub const __wasi_dirent_t = struct___wasi_dirent_t;
comptime {
    if (!(@sizeOf(__wasi_dirent_t) == @as(c_ulong, 24))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_dirent_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_dirent_t, @ptrFromInt(0)).d_next) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_dirent_t, @ptrFromInt(0)).d_ino) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_dirent_t, @ptrFromInt(0)).d_namlen) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_dirent_t, @ptrFromInt(0)).d_type) == @as(c_ulong, 20))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_advice_t = u8;
comptime {
    if (!(@sizeOf(__wasi_advice_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_advice_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_fdflags_t = u16;
pub const struct___wasi_fdstat_t = extern struct {
    fs_filetype: __wasi_filetype_t = 0,
    fs_flags: __wasi_fdflags_t = 0,
    fs_rights_base: __wasi_rights_t = 0,
    fs_rights_inheriting: __wasi_rights_t = 0,
};
pub const __wasi_fdstat_t = struct___wasi_fdstat_t;
comptime {
    if (!(@sizeOf(__wasi_fdstat_t) == @as(c_ulong, 24))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_fdstat_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_fdstat_t, @ptrFromInt(0)).fs_filetype) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_fdstat_t, @ptrFromInt(0)).fs_flags) == @as(c_ulong, 2))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_fdstat_t, @ptrFromInt(0)).fs_rights_base) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_fdstat_t, @ptrFromInt(0)).fs_rights_inheriting) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_device_t = u64;
comptime {
    if (!(@sizeOf(__wasi_device_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_device_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_fstflags_t = u16;
pub const __wasi_lookupflags_t = u32;
pub const __wasi_oflags_t = u16;
pub const __wasi_linkcount_t = u64;
comptime {
    if (!(@sizeOf(__wasi_linkcount_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_linkcount_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const struct___wasi_filestat_t = extern struct {
    dev: __wasi_device_t = 0,
    ino: __wasi_inode_t = 0,
    filetype: __wasi_filetype_t = 0,
    nlink: __wasi_linkcount_t = 0,
    size: __wasi_filesize_t = 0,
    atim: __wasi_timestamp_t = 0,
    mtim: __wasi_timestamp_t = 0,
    ctim: __wasi_timestamp_t = 0,
};
pub const __wasi_filestat_t = struct___wasi_filestat_t;
comptime {
    if (!(@sizeOf(__wasi_filestat_t) == @as(c_ulong, 64))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_filestat_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).dev) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).ino) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).filetype) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).nlink) == @as(c_ulong, 24))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).size) == @as(c_ulong, 32))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).atim) == @as(c_ulong, 40))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).mtim) == @as(c_ulong, 48))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_filestat_t, @ptrFromInt(0)).ctim) == @as(c_ulong, 56))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_userdata_t = u64;
comptime {
    if (!(@sizeOf(__wasi_userdata_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_userdata_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_eventtype_t = u8;
comptime {
    if (!(@sizeOf(__wasi_eventtype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_eventtype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_eventrwflags_t = u16;
pub const struct___wasi_event_fd_readwrite_t = extern struct {
    nbytes: __wasi_filesize_t = 0,
    flags: __wasi_eventrwflags_t = 0,
};
pub const __wasi_event_fd_readwrite_t = struct___wasi_event_fd_readwrite_t;
comptime {
    if (!(@sizeOf(__wasi_event_fd_readwrite_t) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_event_fd_readwrite_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_fd_readwrite_t, @ptrFromInt(0)).nbytes) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_fd_readwrite_t, @ptrFromInt(0)).flags) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const struct___wasi_event_t = extern struct {
    userdata: __wasi_userdata_t = 0,
    @"error": __wasi_errno_t = 0,
    type: __wasi_eventtype_t = 0,
    fd_readwrite: __wasi_event_fd_readwrite_t = @import("std").mem.zeroes(__wasi_event_fd_readwrite_t),
};
pub const __wasi_event_t = struct___wasi_event_t;
comptime {
    if (!(@sizeOf(__wasi_event_t) == @as(c_ulong, 32))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_event_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_t, @ptrFromInt(0)).userdata) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_t, @ptrFromInt(0)).@"error") == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_t, @ptrFromInt(0)).type) == @as(c_ulong, 10))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_event_t, @ptrFromInt(0)).fd_readwrite) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_subclockflags_t = u16;
pub const struct___wasi_subscription_clock_t = extern struct {
    id: __wasi_clockid_t = 0,
    timeout: __wasi_timestamp_t = 0,
    precision: __wasi_timestamp_t = 0,
    flags: __wasi_subclockflags_t = 0,
};
pub const __wasi_subscription_clock_t = struct___wasi_subscription_clock_t;
comptime {
    if (!(@sizeOf(__wasi_subscription_clock_t) == @as(c_ulong, 32))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_subscription_clock_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_clock_t, @ptrFromInt(0)).id) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_clock_t, @ptrFromInt(0)).timeout) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_clock_t, @ptrFromInt(0)).precision) == @as(c_ulong, 16))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_clock_t, @ptrFromInt(0)).flags) == @as(c_ulong, 24))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const struct___wasi_subscription_fd_readwrite_t = extern struct {
    file_descriptor: __wasi_fd_t = 0,
};
pub const __wasi_subscription_fd_readwrite_t = struct___wasi_subscription_fd_readwrite_t;
comptime {
    if (!(@sizeOf(__wasi_subscription_fd_readwrite_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_subscription_fd_readwrite_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_fd_readwrite_t, @ptrFromInt(0)).file_descriptor) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const union___wasi_subscription_u_u_t = extern union {
    clock: __wasi_subscription_clock_t,
    fd_read: __wasi_subscription_fd_readwrite_t,
    fd_write: __wasi_subscription_fd_readwrite_t,
};
pub const __wasi_subscription_u_u_t = union___wasi_subscription_u_u_t;
pub const struct___wasi_subscription_u_t = extern struct {
    tag: u8 = 0,
    u: __wasi_subscription_u_u_t = @import("std").mem.zeroes(__wasi_subscription_u_u_t),
};
pub const __wasi_subscription_u_t = struct___wasi_subscription_u_t;
comptime {
    if (!(@sizeOf(__wasi_subscription_u_t) == @as(c_ulong, 40))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_subscription_u_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const struct___wasi_subscription_t = extern struct {
    userdata: __wasi_userdata_t = 0,
    u: __wasi_subscription_u_t = @import("std").mem.zeroes(__wasi_subscription_u_t),
    pub const __wasi_poll_oneoff = __root.__wasi_poll_oneoff;
    pub const oneoff = __root.__wasi_poll_oneoff;
};
pub const __wasi_subscription_t = struct___wasi_subscription_t;
comptime {
    if (!(@sizeOf(__wasi_subscription_t) == @as(c_ulong, 48))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_subscription_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_t, @ptrFromInt(0)).userdata) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_subscription_t, @ptrFromInt(0)).u) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const __wasi_exitcode_t = u32;
comptime {
    if (!(@sizeOf(__wasi_exitcode_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_exitcode_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_riflags_t = u16;
pub const __wasi_roflags_t = u16;
pub const __wasi_siflags_t = u16;
comptime {
    if (!(@sizeOf(__wasi_siflags_t) == @as(c_ulong, 2))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_siflags_t) == @as(c_ulong, 2))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const __wasi_sdflags_t = u8;
pub const __wasi_preopentype_t = u8;
comptime {
    if (!(@sizeOf(__wasi_preopentype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_preopentype_t) == @as(c_ulong, 1))) @compileError("static assertion failed \"witx calculated align\"");
}
pub const struct___wasi_prestat_dir_t = extern struct {
    pr_name_len: __wasi_size_t = 0,
};
pub const __wasi_prestat_dir_t = struct___wasi_prestat_dir_t;
comptime {
    if (!(@sizeOf(__wasi_prestat_dir_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_prestat_dir_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
comptime {
    if (!(@intFromPtr(&@as(*allowzero __wasi_prestat_dir_t, @ptrFromInt(0)).pr_name_len) == @as(c_ulong, 0))) @compileError("static assertion failed \"witx calculated offset\"");
}
pub const union___wasi_prestat_u_t = extern union {
    dir: __wasi_prestat_dir_t,
};
pub const __wasi_prestat_u_t = union___wasi_prestat_u_t;
pub const struct___wasi_prestat_t = extern struct {
    tag: u8 = 0,
    u: __wasi_prestat_u_t = @import("std").mem.zeroes(__wasi_prestat_u_t),
};
pub const __wasi_prestat_t = struct___wasi_prestat_t;
comptime {
    if (!(@sizeOf(__wasi_prestat_t) == @as(c_ulong, 8))) @compileError("static assertion failed \"witx calculated size\"");
}
comptime {
    if (!(@alignOf(__wasi_prestat_t) == @as(c_ulong, 4))) @compileError("static assertion failed \"witx calculated align\"");
}
pub extern fn __wasi_args_get(argv: [*c][*c]u8, argv_buf: [*c]u8) __wasi_errno_t;
pub extern fn __wasi_args_sizes_get(retptr0: [*c]__wasi_size_t, retptr1: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_environ_get(environ: [*c][*c]u8, environ_buf: [*c]u8) __wasi_errno_t;
pub extern fn __wasi_environ_sizes_get(retptr0: [*c]__wasi_size_t, retptr1: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_clock_res_get(id: __wasi_clockid_t, retptr0: [*c]__wasi_timestamp_t) __wasi_errno_t;
pub extern fn __wasi_clock_time_get(id: __wasi_clockid_t, precision: __wasi_timestamp_t, retptr0: [*c]__wasi_timestamp_t) __wasi_errno_t;
pub extern fn __wasi_fd_advise(fd: __wasi_fd_t, offset: __wasi_filesize_t, len: __wasi_filesize_t, advice: __wasi_advice_t) __wasi_errno_t;
pub extern fn __wasi_fd_allocate(fd: __wasi_fd_t, offset: __wasi_filesize_t, len: __wasi_filesize_t) __wasi_errno_t;
pub extern fn __wasi_fd_close(fd: __wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_fd_datasync(fd: __wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_fd_fdstat_get(fd: __wasi_fd_t, retptr0: [*c]__wasi_fdstat_t) __wasi_errno_t;
pub extern fn __wasi_fd_fdstat_set_flags(fd: __wasi_fd_t, flags: __wasi_fdflags_t) __wasi_errno_t;
pub extern fn __wasi_fd_fdstat_set_rights(fd: __wasi_fd_t, fs_rights_base: __wasi_rights_t, fs_rights_inheriting: __wasi_rights_t) __wasi_errno_t;
pub extern fn __wasi_fd_filestat_get(fd: __wasi_fd_t, retptr0: [*c]__wasi_filestat_t) __wasi_errno_t;
pub extern fn __wasi_fd_filestat_set_size(fd: __wasi_fd_t, size: __wasi_filesize_t) __wasi_errno_t;
pub extern fn __wasi_fd_filestat_set_times(fd: __wasi_fd_t, atim: __wasi_timestamp_t, mtim: __wasi_timestamp_t, fst_flags: __wasi_fstflags_t) __wasi_errno_t;
pub extern fn __wasi_fd_pread(fd: __wasi_fd_t, iovs: [*c]const __wasi_iovec_t, iovs_len: usize, offset: __wasi_filesize_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_fd_prestat_get(fd: __wasi_fd_t, retptr0: [*c]__wasi_prestat_t) __wasi_errno_t;
pub extern fn __wasi_fd_prestat_dir_name(fd: __wasi_fd_t, path: [*c]u8, path_len: __wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_fd_pwrite(fd: __wasi_fd_t, iovs: [*c]const __wasi_ciovec_t, iovs_len: usize, offset: __wasi_filesize_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_fd_read(fd: __wasi_fd_t, iovs: [*c]const __wasi_iovec_t, iovs_len: usize, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_fd_readdir(fd: __wasi_fd_t, buf: [*c]u8, buf_len: __wasi_size_t, cookie: __wasi_dircookie_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_fd_renumber(fd: __wasi_fd_t, to: __wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_fd_seek(fd: __wasi_fd_t, offset: __wasi_filedelta_t, whence: __wasi_whence_t, retptr0: [*c]__wasi_filesize_t) __wasi_errno_t;
pub extern fn __wasi_fd_sync(fd: __wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_fd_tell(fd: __wasi_fd_t, retptr0: [*c]__wasi_filesize_t) __wasi_errno_t;
pub extern fn __wasi_fd_write(fd: __wasi_fd_t, iovs: [*c]const __wasi_ciovec_t, iovs_len: usize, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_path_create_directory(fd: __wasi_fd_t, path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_path_filestat_get(fd: __wasi_fd_t, flags: __wasi_lookupflags_t, path: [*c]const u8, retptr0: [*c]__wasi_filestat_t) __wasi_errno_t;
pub extern fn __wasi_path_filestat_set_times(fd: __wasi_fd_t, flags: __wasi_lookupflags_t, path: [*c]const u8, atim: __wasi_timestamp_t, mtim: __wasi_timestamp_t, fst_flags: __wasi_fstflags_t) __wasi_errno_t;
pub extern fn __wasi_path_link(old_fd: __wasi_fd_t, old_flags: __wasi_lookupflags_t, old_path: [*c]const u8, new_fd: __wasi_fd_t, new_path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_path_open(fd: __wasi_fd_t, dirflags: __wasi_lookupflags_t, path: [*c]const u8, oflags: __wasi_oflags_t, fs_rights_base: __wasi_rights_t, fs_rights_inheriting: __wasi_rights_t, fdflags: __wasi_fdflags_t, retptr0: [*c]__wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_path_readlink(fd: __wasi_fd_t, path: [*c]const u8, buf: [*c]u8, buf_len: __wasi_size_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_path_remove_directory(fd: __wasi_fd_t, path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_path_rename(fd: __wasi_fd_t, old_path: [*c]const u8, new_fd: __wasi_fd_t, new_path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_path_symlink(old_path: [*c]const u8, fd: __wasi_fd_t, new_path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_path_unlink_file(fd: __wasi_fd_t, path: [*c]const u8) __wasi_errno_t;
pub extern fn __wasi_poll_oneoff(in: [*c]const __wasi_subscription_t, out: [*c]__wasi_event_t, nsubscriptions: __wasi_size_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_proc_exit(rval: __wasi_exitcode_t) noreturn;
pub extern fn __wasi_sched_yield() __wasi_errno_t;
pub extern fn __wasi_random_get(buf: [*c]u8, buf_len: __wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_sock_accept(fd: __wasi_fd_t, flags: __wasi_fdflags_t, retptr0: [*c]__wasi_fd_t) __wasi_errno_t;
pub extern fn __wasi_sock_recv(fd: __wasi_fd_t, ri_data: [*c]const __wasi_iovec_t, ri_data_len: usize, ri_flags: __wasi_riflags_t, retptr0: [*c]__wasi_size_t, retptr1: [*c]__wasi_roflags_t) __wasi_errno_t;
pub extern fn __wasi_sock_send(fd: __wasi_fd_t, si_data: [*c]const __wasi_ciovec_t, si_data_len: usize, si_flags: __wasi_siflags_t, retptr0: [*c]__wasi_size_t) __wasi_errno_t;
pub extern fn __wasi_sock_shutdown(fd: __wasi_fd_t, how: __wasi_sdflags_t) __wasi_errno_t;
pub extern const _CLOCK_MONOTONIC: struct___clockid;
pub extern const _CLOCK_REALTIME: struct___clockid;
pub extern fn clock() clock_t;
pub extern fn time([*c]time_t) time_t;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn timespec_get([*c]struct_timespec, c_int) c_int;
pub extern fn strftime_l(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm, locale_t) usize;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub extern fn nanosleep([*c]const struct_timespec, [*c]struct_timespec) c_int;
pub extern fn clock_getres(clockid_t, [*c]struct_timespec) c_int;
pub extern fn clock_gettime(clockid_t, [*c]struct_timespec) c_int;
pub extern fn clock_nanosleep(clockid_t, c_int, [*c]const struct_timespec, [*c]struct_timespec) c_int;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern var getdate_err: c_int;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn timegm([*c]struct_tm) time_t;
pub const off_t = c_longlong;
pub const struct__IO_FILE = opaque {
    pub const fclose = __root.fclose;
    pub const feof = __root.feof;
    pub const ferror = __root.ferror;
    pub const fflush = __root.fflush;
    pub const clearerr = __root.clearerr;
    pub const fseek = __root.fseek;
    pub const ftell = __root.ftell;
    pub const rewind = __root.rewind;
    pub const fgetpos = __root.fgetpos;
    pub const fsetpos = __root.fsetpos;
    pub const fgetc = __root.fgetc;
    pub const getc = __root.getc;
    pub const fprintf = __root.fprintf;
    pub const vfprintf = __root.vfprintf;
    pub const fscanf = __root.fscanf;
    pub const vfscanf = __root.vfscanf;
    pub const setvbuf = __root.setvbuf;
    pub const setbuf = __root.setbuf;
    pub const fileno = __root.fileno;
    pub const fseeko = __root.fseeko;
    pub const ftello = __root.ftello;
    pub const getc_unlocked = __root.getc_unlocked;
    pub const setlinebuf = __root.setlinebuf;
    pub const setbuffer = __root.setbuffer;
    pub const fgetc_unlocked = __root.fgetc_unlocked;
    pub const fflush_unlocked = __root.fflush_unlocked;
    pub const clearerr_unlocked = __root.clearerr_unlocked;
    pub const feof_unlocked = __root.feof_unlocked;
    pub const ferror_unlocked = __root.ferror_unlocked;
    pub const fileno_unlocked = __root.fileno_unlocked;
    pub const getw = __root.getw;
    pub const fgetln = __root.fgetln;
    pub const av_hex_dump = __root.av_hex_dump;
    pub const av_pkt_dump2 = __root.av_pkt_dump2;
    pub const unlocked = __root.getc_unlocked;
    pub const dump = __root.av_hex_dump;
    pub const dump2 = __root.av_pkt_dump2;
};
pub const FILE = struct__IO_FILE;
pub const __builtin_va_list = ?*anyopaque;
pub const va_list = __builtin_va_list;
pub const __isoc_va_list = __builtin_va_list;
pub const union__G_fpos64_t = extern union {
    __opaque: [16]u8,
    __lldata: c_longlong,
    __align: f64,
};
pub const fpos_t = union__G_fpos64_t;
pub extern const stdin: ?*FILE;
pub extern const stdout: ?*FILE;
pub extern const stderr: ?*FILE;
pub extern fn fopen(noalias [*c]const u8, noalias [*c]const u8) ?*FILE;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias ?*FILE) ?*FILE;
pub extern fn fclose(?*FILE) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename([*c]const u8, [*c]const u8) c_int;
pub extern fn feof(?*FILE) c_int;
pub extern fn ferror(?*FILE) c_int;
pub extern fn fflush(?*FILE) c_int;
pub extern fn clearerr(?*FILE) void;
pub extern fn fseek(?*FILE, c_long, c_int) c_int;
pub extern fn ftell(?*FILE) c_long;
pub extern fn rewind(?*FILE) void;
pub extern fn fgetpos(noalias ?*FILE, noalias [*c]fpos_t) c_int;
pub extern fn fsetpos(?*FILE, [*c]const fpos_t) c_int;
pub extern fn fread(noalias ?*anyopaque, usize, usize, noalias ?*FILE) usize;
pub extern fn fwrite(noalias ?*const anyopaque, usize, usize, noalias ?*FILE) usize;
pub extern fn fgetc(?*FILE) c_int;
pub extern fn getc(?*FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn ungetc(c_int, ?*FILE) c_int;
pub extern fn fputc(c_int, ?*FILE) c_int;
pub extern fn putc(c_int, ?*FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, noalias ?*FILE) [*c]u8;
pub extern fn fputs(noalias [*c]const u8, noalias ?*FILE) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn printf(noalias [*c]const u8, ...) c_int;
pub extern fn fprintf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn snprintf(noalias [*c]u8, usize, noalias [*c]const u8, ...) c_int;
pub extern fn vprintf(noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vfprintf(noalias ?*FILE, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsprintf(noalias [*c]u8, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsnprintf(noalias [*c]u8, usize, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn vscanf(noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vfscanf(noalias ?*FILE, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsscanf(noalias [*c]const u8, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn perror([*c]const u8) void;
pub extern fn setvbuf(noalias ?*FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn setbuf(noalias ?*FILE, noalias [*c]u8) void;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpfile() ?*FILE;
pub extern fn fmemopen(noalias ?*anyopaque, usize, noalias [*c]const u8) ?*FILE;
pub extern fn open_memstream([*c][*c]u8, [*c]usize) ?*FILE;
pub extern fn fdopen(c_int, [*c]const u8) ?*FILE;
pub extern fn fileno(?*FILE) c_int;
pub extern fn fseeko(?*FILE, off_t, c_int) c_int;
pub extern fn ftello(?*FILE) off_t;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn getc_unlocked(?*FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, ?*FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getdelim(noalias [*c][*c]u8, noalias [*c]usize, c_int, noalias ?*FILE) isize;
pub extern fn getline(noalias [*c][*c]u8, noalias [*c]usize, noalias ?*FILE) isize;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn cuserid([*c]u8) [*c]u8;
pub extern fn setlinebuf(?*FILE) void;
pub extern fn setbuffer(?*FILE, [*c]u8, usize) void;
pub extern fn fgetc_unlocked(?*FILE) c_int;
pub extern fn fputc_unlocked(c_int, ?*FILE) c_int;
pub extern fn fflush_unlocked(?*FILE) c_int;
pub extern fn fread_unlocked(?*anyopaque, usize, usize, ?*FILE) usize;
pub extern fn fwrite_unlocked(?*const anyopaque, usize, usize, ?*FILE) usize;
pub extern fn clearerr_unlocked(?*FILE) void;
pub extern fn feof_unlocked(?*FILE) c_int;
pub extern fn ferror_unlocked(?*FILE) c_int;
pub extern fn fileno_unlocked(?*FILE) c_int;
pub extern fn getw(?*FILE) c_int;
pub extern fn putw(c_int, ?*FILE) c_int;
pub extern fn fgetln(?*FILE, [*c]usize) [*c]u8;
pub extern fn asprintf([*c][*c]u8, [*c]const u8, ...) c_int;
pub extern fn vasprintf([*c][*c]u8, [*c]const u8, __isoc_va_list) c_int;
pub extern threadlocal var errno: c_int;
pub extern fn avutil_version() c_uint;
pub extern fn av_version_info() [*c]const u8;
pub extern fn avutil_configuration() [*c]const u8;
pub extern fn avutil_license() [*c]const u8;
pub const AVMEDIA_TYPE_UNKNOWN: c_int = -1;
pub const AVMEDIA_TYPE_VIDEO: c_int = 0;
pub const AVMEDIA_TYPE_AUDIO: c_int = 1;
pub const AVMEDIA_TYPE_DATA: c_int = 2;
pub const AVMEDIA_TYPE_SUBTITLE: c_int = 3;
pub const AVMEDIA_TYPE_ATTACHMENT: c_int = 4;
pub const AVMEDIA_TYPE_NB: c_int = 5;
pub const enum_AVMediaType = c_int;
pub extern fn av_get_media_type_string(media_type: enum_AVMediaType) [*c]const u8;
pub const AV_PICTURE_TYPE_NONE: c_int = 0;
pub const AV_PICTURE_TYPE_I: c_int = 1;
pub const AV_PICTURE_TYPE_P: c_int = 2;
pub const AV_PICTURE_TYPE_B: c_int = 3;
pub const AV_PICTURE_TYPE_S: c_int = 4;
pub const AV_PICTURE_TYPE_SI: c_int = 5;
pub const AV_PICTURE_TYPE_SP: c_int = 6;
pub const AV_PICTURE_TYPE_BI: c_int = 7;
pub const enum_AVPictureType = c_uint;
pub extern fn av_get_picture_type_char(pict_type: enum_AVPictureType) u8;
pub const imaxdiv_t = extern struct {
    quot: intmax_t = 0,
    rem: intmax_t = 0,
};
pub extern fn imaxabs(intmax_t) intmax_t;
pub extern fn imaxdiv(intmax_t, intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias [*c]const u8, noalias [*c][*c]u8, c_int) intmax_t;
pub extern fn strtoumax(noalias [*c]const u8, noalias [*c][*c]u8, c_int) uintmax_t;
pub extern fn wcstoimax(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t, c_int) intmax_t;
pub extern fn wcstoumax(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t, c_int) uintmax_t;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn acos(f64) f64;
pub extern fn acosf(f32) f32;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn acosh(f64) f64;
pub extern fn acoshf(f32) f32;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asin(f64) f64;
pub extern fn asinf(f32) f32;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn asinh(f64) f64;
pub extern fn asinhf(f32) f32;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atan(f64) f64;
pub extern fn atanf(f32) f32;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2(f64, f64) f64;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn atanh(f64) f64;
pub extern fn atanhf(f32) f32;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn ceil(f64) f64;
pub extern fn ceilf(f32) f32;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn cos(f64) f64;
pub extern fn cosf(f32) f32;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn cosh(f64) f64;
pub extern fn coshf(f32) f32;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn erf(f64) f64;
pub extern fn erff(f32) f32;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfc(f64) f64;
pub extern fn erfcf(f32) f32;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn exp(f64) f64;
pub extern fn expf(f32) f32;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2(f64) f64;
pub extern fn exp2f(f32) f32;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1(f64) f64;
pub extern fn expm1f(f32) f32;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn fabs(f64) f64;
pub extern fn fabsf(f32) f32;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn fdim(f64, f64) f64;
pub extern fn fdimf(f32, f32) f32;
pub extern fn fdiml(c_longdouble, c_longdouble) c_longdouble;
pub extern fn floor(f64) f64;
pub extern fn floorf(f32) f32;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminf(f32, f32) f32;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmod(f64, f64) f64;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn frexp(f64, [*c]c_int) f64;
pub extern fn frexpf(f32, [*c]c_int) f32;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotf(f32, f32) f32;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn ldexp(f64, c_int) f64;
pub extern fn ldexpf(f32, c_int) f32;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn lgamma(f64) f64;
pub extern fn lgammaf(f32) f32;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn log(f64) f64;
pub extern fn logf(f32) f32;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10(f64) f64;
pub extern fn log10f(f32) f32;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log1p(f64) f64;
pub extern fn log1pf(f32) f32;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn log2(f64) f64;
pub extern fn log2f(f32) f32;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn logb(f64) f64;
pub extern fn logbf(f32) f32;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn lrint(f64) c_long;
pub extern fn lrintf(f32) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn lround(f64) c_long;
pub extern fn lroundf(f32) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn modf(f64, [*c]f64) f64;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn nan([*c]const u8) f64;
pub extern fn nanf([*c]const u8) f32;
pub extern fn nanl([*c]const u8) c_longdouble;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn pow(f64, f64) f64;
pub extern fn powf(f32, f32) f32;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn rint(f64) f64;
pub extern fn rintf(f32) f32;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn round(f64) f64;
pub extern fn roundf(f32) f32;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn sin(f64) f64;
pub extern fn sinf(f32) f32;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn sinh(f64) f64;
pub extern fn sinhf(f32) f32;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn sqrt(f64) f64;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn tan(f64) f64;
pub extern fn tanf(f32) f32;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn tanh(f64) f64;
pub extern fn tanhf(f32) f32;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn tgamma(f64) f64;
pub extern fn tgammaf(f32) f32;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn trunc(f64) f64;
pub extern fn truncf(f32) f32;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn drem(f64, f64) f64;
pub extern fn dremf(f32, f32) f32;
pub extern fn finite(f64) c_int;
pub extern fn finitef(f32) c_int;
pub extern fn scalb(f64, f64) f64;
pub extern fn scalbf(f32, f32) f32;
pub extern fn significand(f64) f64;
pub extern fn significandf(f32) f32;
pub extern fn lgamma_r(f64, [*c]c_int) f64;
pub extern fn lgammaf_r(f32, [*c]c_int) f32;
pub extern fn j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn malloc(__size: usize) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn calloc(__nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: usize) ?*anyopaque;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn qsort(?*anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn _Exit(c_int) noreturn;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn atof([*c]const u8) f64;
pub extern fn strtof(noalias [*c]const u8, noalias [*c][*c]u8) f32;
pub extern fn strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;
pub extern fn strtold(noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;
pub extern fn strtol(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_long;
pub extern fn strtoul(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulong;
pub extern fn strtoll(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_longlong;
pub extern fn strtoull(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulonglong;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn aligned_alloc(usize, usize) ?*anyopaque;
pub extern fn atexit(?*const fn () callconv(.c) void) c_int;
pub extern fn exit(c_int) noreturn;
pub extern fn at_quick_exit(?*const fn () callconv(.c) void) c_int;
pub extern fn quick_exit(c_int) noreturn;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn system([*c]const u8) c_int;
pub extern fn bsearch(?*const anyopaque, ?*const anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) ?*anyopaque;
pub extern fn abs(c_int) c_int;
pub extern fn labs(c_long) c_long;
pub extern fn llabs(c_longlong) c_longlong;
pub const div_t = extern struct {
    quot: c_int = 0,
    rem: c_int = 0,
};
pub const ldiv_t = extern struct {
    quot: c_long = 0,
    rem: c_long = 0,
};
pub const lldiv_t = extern struct {
    quot: c_longlong = 0,
    rem: c_longlong = 0,
};
pub extern fn div(c_int, c_int) div_t;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen([*c]const u8, usize) c_int;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn posix_memalign([*c]?*anyopaque, usize, usize) c_int;
pub extern fn setenv([*c]const u8, [*c]const u8, c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn random() c_long;
pub extern fn srandom(c_uint) void;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn setstate([*c]u8) [*c]u8;
pub extern fn putenv([*c]u8) c_int;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn setkey([*c]const u8) void;
pub extern fn drand48() f64;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn srand48(c_long) void;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn alloca(usize) ?*anyopaque;
pub extern fn clearenv() c_int;
pub extern fn arc4random() u32;
pub extern fn arc4random_buf(?*anyopaque, usize) void;
pub extern fn arc4random_uniform(u32) u32;
pub extern fn memcpy(noalias __dst: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn memmove(__dst: ?*anyopaque, __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn memset(__dst: ?*anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn strlen([*c]const u8) usize;
pub extern fn strdup([*c]const u8) [*c]u8;
pub extern fn strcmp([*c]const u8, [*c]const u8) c_int;
pub extern fn memchr(?*const anyopaque, c_int, usize) ?*anyopaque;
pub extern fn memcmp(?*const anyopaque, ?*const anyopaque, usize) c_int;
pub extern fn strcpy(noalias [*c]u8, noalias [*c]const u8) [*c]u8;
pub extern fn strncpy(noalias [*c]u8, noalias [*c]const u8, usize) [*c]u8;
pub extern fn strcat(noalias [*c]u8, noalias [*c]const u8) [*c]u8;
pub extern fn strncat(noalias [*c]u8, noalias [*c]const u8, usize) [*c]u8;
pub extern fn strncmp([*c]const u8, [*c]const u8, usize) c_int;
pub extern fn strcoll([*c]const u8, [*c]const u8) c_int;
pub extern fn strxfrm(noalias [*c]u8, noalias [*c]const u8, usize) usize;
pub extern fn strchr([*c]const u8, c_int) [*c]u8;
pub extern fn strrchr([*c]const u8, c_int) [*c]u8;
pub extern fn strcspn([*c]const u8, [*c]const u8) usize;
pub extern fn strspn([*c]const u8, [*c]const u8) usize;
pub extern fn strpbrk([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strstr([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strtok(noalias [*c]u8, noalias [*c]const u8) [*c]u8;
pub extern fn strerror(c_int) [*c]u8;
pub extern fn bcmp(?*const anyopaque, ?*const anyopaque, usize) c_int;
pub extern fn bcopy(?*const anyopaque, ?*anyopaque, usize) void;
pub extern fn bzero(?*anyopaque, usize) void;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn ffs(c_int) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, usize) c_int;
pub extern fn strcasecmp_l([*c]const u8, [*c]const u8, locale_t) c_int;
pub extern fn strncasecmp_l([*c]const u8, [*c]const u8, usize, locale_t) c_int;
pub extern fn strtok_r(noalias [*c]u8, noalias [*c]const u8, noalias [*c][*c]u8) [*c]u8;
pub extern fn strerror_r(c_int, [*c]u8, usize) c_int;
pub extern fn stpcpy(noalias [*c]u8, noalias [*c]const u8) [*c]u8;
pub extern fn stpncpy(noalias [*c]u8, noalias [*c]const u8, usize) [*c]u8;
pub extern fn strnlen([*c]const u8, usize) usize;
pub extern fn strndup([*c]const u8, usize) [*c]u8;
pub extern fn strsignal(c_int) [*c]u8;
pub extern fn strerror_l(c_int, locale_t) [*c]u8;
pub extern fn strcoll_l([*c]const u8, [*c]const u8, locale_t) c_int;
pub extern fn strxfrm_l(noalias [*c]u8, noalias [*c]const u8, usize, locale_t) usize;
pub extern fn memmem(?*const anyopaque, usize, ?*const anyopaque, usize) ?*anyopaque;
pub extern fn memccpy(noalias ?*anyopaque, noalias ?*const anyopaque, c_int, usize) ?*anyopaque;
pub extern fn strsep([*c][*c]u8, [*c]const u8) [*c]u8;
pub extern fn strlcat([*c]u8, [*c]const u8, usize) usize;
pub extern fn strlcpy([*c]u8, [*c]const u8, usize) usize;
pub extern fn explicit_bzero(?*anyopaque, usize) void;
pub extern fn av_log2(v: c_uint) c_int;
pub extern fn av_log2_16bit(v: c_uint) c_int;
pub inline fn av_clip_c(arg_a: c_int, arg_amin: c_int, arg_amax: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var amin = arg_amin;
    _ = &amin;
    var amax = arg_amax;
    _ = &amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
}
pub inline fn av_clip64_c(arg_a: i64, arg_amin: i64, arg_amax: i64) i64 {
    var a = arg_a;
    _ = &a;
    var amin = arg_amin;
    _ = &amin;
    var amax = arg_amax;
    _ = &amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
}
pub inline fn av_clip_uint8_c(arg_a: c_int) u8 {
    var a = arg_a;
    _ = &a;
    if ((a & ~@as(c_int, 255)) != 0) return @bitCast(@as(i8, @truncate(~a >> @intCast(@as(c_int, 31))))) else return @bitCast(@as(i8, @truncate(a)));
}
pub inline fn av_clip_int8_c(arg_a: c_int) i8 {
    var a = arg_a;
    _ = &a;
    if (((@as(c_uint, @bitCast(@as(c_int, a))) +% @as(c_uint, 128)) & @as(c_uint, @bitCast(@as(c_int, ~@as(c_int, 255))))) != 0) return @truncate((a >> @intCast(@as(c_int, 31))) ^ @as(c_int, 127)) else return @truncate(a);
}
pub inline fn av_clip_uint16_c(arg_a: c_int) u16 {
    var a = arg_a;
    _ = &a;
    if ((a & ~@as(c_int, 65535)) != 0) return @bitCast(@as(c_short, @truncate(~a >> @intCast(@as(c_int, 31))))) else return @bitCast(@as(c_short, @truncate(a)));
}
pub inline fn av_clip_int16_c(arg_a: c_int) i16 {
    var a = arg_a;
    _ = &a;
    if (((@as(c_uint, @bitCast(@as(c_int, a))) +% @as(c_uint, 32768)) & @as(c_uint, @bitCast(@as(c_int, ~@as(c_int, 65535))))) != 0) return @truncate((a >> @intCast(@as(c_int, 31))) ^ @as(c_int, 32767)) else return @truncate(a);
}
pub inline fn av_clipl_int32_c(arg_a: i64) i32 {
    var a = arg_a;
    _ = &a;
    if ((@as(c_ulonglong, @bitCast(@as(c_longlong, a + @as(i64, 2147483648)))) & ~@as(c_ulonglong, 4294967295)) != 0) return @truncate((a >> @intCast(@as(i64, 63))) ^ @as(i64, 2147483647)) else return @truncate(a);
}
pub inline fn av_clip_intp2_c(arg_a: c_int, arg_p: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var p = arg_p;
    _ = &p;
    if (((@as(c_uint, @bitCast(@as(c_int, a))) +% @as(c_uint, @bitCast(@as(c_int, @as(c_int, 1) << @intCast(p))))) & @as(c_uint, @bitCast(@as(c_int, ~((@as(c_int, 2) << @intCast(p)) - @as(c_int, 1)))))) != 0) return (a >> @intCast(@as(c_int, 31))) ^ ((@as(c_int, 1) << @intCast(p)) - @as(c_int, 1)) else return a;
}
pub inline fn av_clip_uintp2_c(arg_a: c_int, arg_p: c_int) c_uint {
    var a = arg_a;
    _ = &a;
    var p = arg_p;
    _ = &p;
    if ((a & ~((@as(c_int, 1) << @intCast(p)) - @as(c_int, 1))) != 0) return @bitCast(@as(c_int, (~a >> @intCast(@as(c_int, 31))) & ((@as(c_int, 1) << @intCast(p)) - @as(c_int, 1)))) else return @bitCast(@as(c_int, a));
}
pub inline fn av_mod_uintp2_c(arg_a: c_uint, arg_p: c_uint) c_uint {
    var a = arg_a;
    _ = &a;
    var p = arg_p;
    _ = &p;
    return a & ((@as(c_uint, 1) << @intCast(p)) -% @as(c_uint, 1));
}
pub inline fn av_sat_add32_c(arg_a: c_int, arg_b: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return av_clipl_int32_c(@as(i64, a) + @as(i64, b));
}
pub inline fn av_sat_dadd32_c(arg_a: c_int, arg_b: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return av_sat_add32_c(a, av_sat_add32_c(b, b));
}
pub inline fn av_sat_sub32_c(arg_a: c_int, arg_b: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return av_clipl_int32_c(@as(i64, a) - @as(i64, b));
}
pub inline fn av_sat_dsub32_c(arg_a: c_int, arg_b: c_int) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return av_sat_sub32_c(a, av_sat_add32_c(b, b));
}
pub inline fn av_sat_add64_c(arg_a: i64, arg_b: i64) i64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var tmp: i64 = undefined;
    _ = &tmp;
    return if (!__builtin.add_overflow(a, b, &tmp)) tmp else if (tmp < @as(i64, 0)) @as(c_longlong, 9223372036854775807) else -@as(c_longlong, 9223372036854775807) - @as(c_longlong, 1);
}
pub inline fn av_sat_sub64_c(arg_a: i64, arg_b: i64) i64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var tmp: i64 = undefined;
    _ = &tmp;
    return if (!__builtin.sub_overflow(a, b, &tmp)) tmp else if (tmp < @as(i64, 0)) @as(c_longlong, 9223372036854775807) else -@as(c_longlong, 9223372036854775807) - @as(c_longlong, 1);
}
pub inline fn av_clipf_c(arg_a: f32, arg_amin: f32, arg_amax: f32) f32 {
    var a = arg_a;
    _ = &a;
    var amin = arg_amin;
    _ = &amin;
    var amax = arg_amax;
    _ = &amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
}
pub inline fn av_clipd_c(arg_a: f64, arg_amin: f64, arg_amax: f64) f64 {
    var a = arg_a;
    _ = &a;
    var amin = arg_amin;
    _ = &amin;
    var amax = arg_amax;
    _ = &amax;
    if (a < amin) return amin else if (a > amax) return amax else return a;
}
pub inline fn av_ceil_log2_c(arg_x: c_int) c_int {
    var x = arg_x;
    _ = &x;
    return av_log2((@as(c_uint, @bitCast(@as(c_int, x))) -% @as(c_uint, 1)) << @intCast(@as(c_uint, 1)));
}
pub inline fn av_popcount_c(arg_x: u32) c_int {
    var x = arg_x;
    _ = &x;
    x -%= (x >> @intCast(@as(u32, 1))) & @as(u32, 1431655765);
    x = (x & @as(u32, 858993459)) +% ((x >> @intCast(@as(u32, 2))) & @as(u32, 858993459));
    x = (x +% (x >> @intCast(@as(u32, 4)))) & @as(u32, 252645135);
    x +%= x >> @intCast(@as(u32, 8));
    return @bitCast(@as(c_uint, @truncate((x +% (x >> @intCast(@as(u32, 16)))) & @as(u32, 63))));
}
pub inline fn av_popcount64_c(arg_x: u64) c_int {
    var x = arg_x;
    _ = &x;
    return av_popcount_c(@truncate(x)) + av_popcount_c(@truncate(x >> @intCast(@as(u64, 32))));
}
pub inline fn av_parity_c(arg_v: u32) c_int {
    var v = arg_v;
    _ = &v;
    return av_popcount_c(v) & @as(c_int, 1);
}
pub extern fn av_strerror(errnum: c_int, errbuf: [*c]u8, errbuf_size: usize) c_int;
pub fn av_make_error_string(arg_errbuf: [*c]u8, arg_errbuf_size: usize, arg_errnum: c_int) callconv(.c) [*c]u8 {
    var errbuf = arg_errbuf;
    _ = &errbuf;
    var errbuf_size = arg_errbuf_size;
    _ = &errbuf_size;
    var errnum = arg_errnum;
    _ = &errnum;
    _ = av_strerror(errnum, errbuf, errbuf_size);
    return errbuf;
}
pub extern fn av_malloc(size: usize) ?*anyopaque;
pub extern fn av_mallocz(size: usize) ?*anyopaque;
pub extern fn av_malloc_array(nmemb: usize, size: usize) ?*anyopaque;
pub extern fn av_mallocz_array(nmemb: usize, size: usize) ?*anyopaque;
pub extern fn av_calloc(nmemb: usize, size: usize) ?*anyopaque;
pub extern fn av_realloc(ptr: ?*anyopaque, size: usize) ?*anyopaque;
pub extern fn av_reallocp(ptr: ?*anyopaque, size: usize) c_int;
pub extern fn av_realloc_f(ptr: ?*anyopaque, nelem: usize, elsize: usize) ?*anyopaque;
pub extern fn av_realloc_array(ptr: ?*anyopaque, nmemb: usize, size: usize) ?*anyopaque;
pub extern fn av_reallocp_array(ptr: ?*anyopaque, nmemb: usize, size: usize) c_int;
pub extern fn av_fast_realloc(ptr: ?*anyopaque, size: [*c]c_uint, min_size: usize) ?*anyopaque;
pub extern fn av_fast_malloc(ptr: ?*anyopaque, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_fast_mallocz(ptr: ?*anyopaque, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_free(ptr: ?*anyopaque) void;
pub extern fn av_freep(ptr: ?*anyopaque) void;
pub extern fn av_strdup(s: [*c]const u8) [*c]u8;
pub extern fn av_strndup(s: [*c]const u8, len: usize) [*c]u8;
pub extern fn av_memdup(p: ?*const anyopaque, size: usize) ?*anyopaque;
pub extern fn av_memcpy_backptr(dst: [*c]u8, back: c_int, cnt: c_int) void;
pub extern fn av_dynarray_add(tab_ptr: ?*anyopaque, nb_ptr: [*c]c_int, elem: ?*anyopaque) void;
pub extern fn av_dynarray_add_nofree(tab_ptr: ?*anyopaque, nb_ptr: [*c]c_int, elem: ?*anyopaque) c_int;
pub extern fn av_dynarray2_add(tab_ptr: [*c]?*anyopaque, nb_ptr: [*c]c_int, elem_size: usize, elem_data: [*c]const u8) ?*anyopaque;
pub fn av_size_mult(arg_a: usize, arg_b: usize, arg_r: [*c]usize) callconv(.c) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var r = arg_r;
    _ = &r;
    var t: usize = a *% b;
    _ = &t;
    if (((@as(usize, @bitCast(@as(c_long, @intFromBool((a | b) >= (@as(usize, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(@sizeOf(usize) *% @as(c_ulong, 4))))))) != 0) and (a != 0)) and ((t / a) != b)) return @bitCast(@as(c_uint, @truncate(-%@as(c_uint, 28))));
    r.* = t;
    return 0;
}
pub extern fn av_max_alloc(max: usize) void;
pub const struct_AVRational = extern struct {
    num: c_int = 0,
    den: c_int = 0,
    pub const av_cmp_q = __root.av_cmp_q;
    pub const av_q2d = __root.av_q2d;
    pub const av_mul_q = __root.av_mul_q;
    pub const av_div_q = __root.av_div_q;
    pub const av_add_q = __root.av_add_q;
    pub const av_sub_q = __root.av_sub_q;
    pub const av_inv_q = __root.av_inv_q;
    pub const av_nearer_q = __root.av_nearer_q;
    pub const av_find_nearest_q_idx = __root.av_find_nearest_q_idx;
    pub const av_q2intfloat = __root.av_q2intfloat;
    pub const av_gcd_q = __root.av_gcd_q;
    pub const av_rescale_delta = __root.av_rescale_delta;
    pub const av_add_stable = __root.av_add_stable;
    pub const q = __root.av_cmp_q;
    pub const q2d = __root.av_q2d;
    pub const idx = __root.av_find_nearest_q_idx;
    pub const q2intfloat = __root.av_q2intfloat;
    pub const delta = __root.av_rescale_delta;
    pub const stable = __root.av_add_stable;
};
pub const AVRational = struct_AVRational;
pub fn av_make_q(arg_num: c_int, arg_den: c_int) callconv(.c) AVRational {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    var r: AVRational = AVRational{
        .num = num,
        .den = den,
    };
    _ = &r;
    return r;
}
pub fn av_cmp_q(arg_a: AVRational, arg_b: AVRational) callconv(.c) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    const tmp: i64 = (@as(i64, a.num) * @as(i64, b.den)) - (@as(i64, b.num) * @as(i64, a.den));
    _ = &tmp;
    if (tmp != 0) return @as(c_int, @truncate(((tmp ^ @as(i64, a.den)) ^ @as(i64, b.den)) >> @intCast(@as(i64, 63)))) | @as(c_int, 1) else if ((b.den != 0) and (a.den != 0)) return 0 else if ((a.num != 0) and (b.num != 0)) return (a.num >> @intCast(@as(c_int, 31))) - (b.num >> @intCast(@as(c_int, 31))) else return -__INT_MAX__ - @as(c_int, 1);
}
pub fn av_q2d(arg_a: AVRational) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a.num)) / @as(f64, @floatFromInt(a.den));
}
pub extern fn av_reduce(dst_num: [*c]c_int, dst_den: [*c]c_int, num: i64, den: i64, max: i64) c_int;
pub extern fn av_mul_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_div_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_add_q(b: AVRational, c: AVRational) AVRational;
pub extern fn av_sub_q(b: AVRational, c: AVRational) AVRational;
pub inline fn av_inv_q(arg_q: AVRational) AVRational {
    var q = arg_q;
    _ = &q;
    var r: AVRational = AVRational{
        .num = q.den,
        .den = q.num,
    };
    _ = &r;
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
pub inline fn av_int2float(arg_i: u32) f32 {
    var i = arg_i;
    _ = &i;
    var v: union_av_intfloat32 = undefined;
    _ = &v;
    v.i = i;
    return v.f;
}
pub inline fn av_float2int(arg_f: f32) u32 {
    var f = arg_f;
    _ = &f;
    var v: union_av_intfloat32 = undefined;
    _ = &v;
    v.f = f;
    return v.i;
}
pub inline fn av_int2double(arg_i: u64) f64 {
    var i = arg_i;
    _ = &i;
    var v: union_av_intfloat64 = undefined;
    _ = &v;
    v.i = i;
    return v.f;
}
pub inline fn av_double2int(arg_f: f64) u64 {
    var f = arg_f;
    _ = &f;
    var v: union_av_intfloat64 = undefined;
    _ = &v;
    v.f = f;
    return v.i;
}
pub const AV_ROUND_ZERO: c_int = 0;
pub const AV_ROUND_INF: c_int = 1;
pub const AV_ROUND_DOWN: c_int = 2;
pub const AV_ROUND_UP: c_int = 3;
pub const AV_ROUND_NEAR_INF: c_int = 5;
pub const AV_ROUND_PASS_MINMAX: c_int = 8192;
pub const enum_AVRounding = c_uint;
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
pub const AV_CLASS_CATEGORY_NA: c_int = 0;
pub const AV_CLASS_CATEGORY_INPUT: c_int = 1;
pub const AV_CLASS_CATEGORY_OUTPUT: c_int = 2;
pub const AV_CLASS_CATEGORY_MUXER: c_int = 3;
pub const AV_CLASS_CATEGORY_DEMUXER: c_int = 4;
pub const AV_CLASS_CATEGORY_ENCODER: c_int = 5;
pub const AV_CLASS_CATEGORY_DECODER: c_int = 6;
pub const AV_CLASS_CATEGORY_FILTER: c_int = 7;
pub const AV_CLASS_CATEGORY_BITSTREAM_FILTER: c_int = 8;
pub const AV_CLASS_CATEGORY_SWSCALER: c_int = 9;
pub const AV_CLASS_CATEGORY_SWRESAMPLER: c_int = 10;
pub const AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT: c_int = 40;
pub const AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT: c_int = 41;
pub const AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT: c_int = 42;
pub const AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT: c_int = 43;
pub const AV_CLASS_CATEGORY_DEVICE_OUTPUT: c_int = 44;
pub const AV_CLASS_CATEGORY_DEVICE_INPUT: c_int = 45;
pub const AV_CLASS_CATEGORY_NB: c_int = 46;
pub const AVClassCategory = c_uint;
pub const struct_AVOptionRanges = opaque {};
pub const struct_AVOption_1 = opaque {};
pub const struct_AVClass = extern struct {
    class_name: [*c]const u8 = null,
    item_name: ?*const fn (ctx: ?*anyopaque) callconv(.c) [*c]const u8 = null,
    option: ?*const struct_AVOption_1 = null,
    version: c_int = 0,
    log_level_offset_offset: c_int = 0,
    parent_log_context_offset: c_int = 0,
    child_next: ?*const fn (obj: ?*anyopaque, prev: ?*anyopaque) callconv(.c) ?*anyopaque = null,
    child_class_next: ?*const fn (prev: [*c]const struct_AVClass) callconv(.c) [*c]const struct_AVClass = null,
    category: AVClassCategory = @import("std").mem.zeroes(AVClassCategory),
    get_category: ?*const fn (ctx: ?*anyopaque) callconv(.c) AVClassCategory = null,
    query_ranges: ?*const fn ([*c]?*struct_AVOptionRanges, obj: ?*anyopaque, key: [*c]const u8, flags: c_int) callconv(.c) c_int = null,
    child_class_iterate: ?*const fn (iter: [*c]?*anyopaque) callconv(.c) [*c]const struct_AVClass = null,
};
pub const AVClass = struct_AVClass;
pub extern fn av_log(avcl: ?*anyopaque, level: c_int, fmt: [*c]const u8, ...) void;
pub extern fn av_log_once(avcl: ?*anyopaque, initial_level: c_int, subsequent_level: c_int, state: [*c]c_int, fmt: [*c]const u8, ...) void;
pub extern fn av_vlog(avcl: ?*anyopaque, level: c_int, fmt: [*c]const u8, vl: va_list) void;
pub extern fn av_log_get_level() c_int;
pub extern fn av_log_set_level(level: c_int) void;
pub extern fn av_log_set_callback(callback: ?*const fn (?*anyopaque, c_int, [*c]const u8, va_list) callconv(.c) void) void;
pub extern fn av_log_default_callback(avcl: ?*anyopaque, level: c_int, fmt: [*c]const u8, vl: va_list) void;
pub extern fn av_default_item_name(ctx: ?*anyopaque) [*c]const u8;
pub extern fn av_default_get_category(ptr: ?*anyopaque) AVClassCategory;
pub extern fn av_log_format_line(ptr: ?*anyopaque, level: c_int, fmt: [*c]const u8, vl: va_list, line: [*c]u8, line_size: c_int, print_prefix: [*c]c_int) void;
pub extern fn av_log_format_line2(ptr: ?*anyopaque, level: c_int, fmt: [*c]const u8, vl: va_list, line: [*c]u8, line_size: c_int, print_prefix: [*c]c_int) c_int;
pub extern fn av_log_set_flags(arg: c_int) void;
pub extern fn av_log_get_flags() c_int;
pub const AV_PIX_FMT_NONE: c_int = -1;
pub const AV_PIX_FMT_YUV420P: c_int = 0;
pub const AV_PIX_FMT_YUYV422: c_int = 1;
pub const AV_PIX_FMT_RGB24: c_int = 2;
pub const AV_PIX_FMT_BGR24: c_int = 3;
pub const AV_PIX_FMT_YUV422P: c_int = 4;
pub const AV_PIX_FMT_YUV444P: c_int = 5;
pub const AV_PIX_FMT_YUV410P: c_int = 6;
pub const AV_PIX_FMT_YUV411P: c_int = 7;
pub const AV_PIX_FMT_GRAY8: c_int = 8;
pub const AV_PIX_FMT_MONOWHITE: c_int = 9;
pub const AV_PIX_FMT_MONOBLACK: c_int = 10;
pub const AV_PIX_FMT_PAL8: c_int = 11;
pub const AV_PIX_FMT_YUVJ420P: c_int = 12;
pub const AV_PIX_FMT_YUVJ422P: c_int = 13;
pub const AV_PIX_FMT_YUVJ444P: c_int = 14;
pub const AV_PIX_FMT_UYVY422: c_int = 15;
pub const AV_PIX_FMT_UYYVYY411: c_int = 16;
pub const AV_PIX_FMT_BGR8: c_int = 17;
pub const AV_PIX_FMT_BGR4: c_int = 18;
pub const AV_PIX_FMT_BGR4_BYTE: c_int = 19;
pub const AV_PIX_FMT_RGB8: c_int = 20;
pub const AV_PIX_FMT_RGB4: c_int = 21;
pub const AV_PIX_FMT_RGB4_BYTE: c_int = 22;
pub const AV_PIX_FMT_NV12: c_int = 23;
pub const AV_PIX_FMT_NV21: c_int = 24;
pub const AV_PIX_FMT_ARGB: c_int = 25;
pub const AV_PIX_FMT_RGBA: c_int = 26;
pub const AV_PIX_FMT_ABGR: c_int = 27;
pub const AV_PIX_FMT_BGRA: c_int = 28;
pub const AV_PIX_FMT_GRAY16BE: c_int = 29;
pub const AV_PIX_FMT_GRAY16LE: c_int = 30;
pub const AV_PIX_FMT_YUV440P: c_int = 31;
pub const AV_PIX_FMT_YUVJ440P: c_int = 32;
pub const AV_PIX_FMT_YUVA420P: c_int = 33;
pub const AV_PIX_FMT_RGB48BE: c_int = 34;
pub const AV_PIX_FMT_RGB48LE: c_int = 35;
pub const AV_PIX_FMT_RGB565BE: c_int = 36;
pub const AV_PIX_FMT_RGB565LE: c_int = 37;
pub const AV_PIX_FMT_RGB555BE: c_int = 38;
pub const AV_PIX_FMT_RGB555LE: c_int = 39;
pub const AV_PIX_FMT_BGR565BE: c_int = 40;
pub const AV_PIX_FMT_BGR565LE: c_int = 41;
pub const AV_PIX_FMT_BGR555BE: c_int = 42;
pub const AV_PIX_FMT_BGR555LE: c_int = 43;
pub const AV_PIX_FMT_VAAPI_MOCO: c_int = 44;
pub const AV_PIX_FMT_VAAPI_IDCT: c_int = 45;
pub const AV_PIX_FMT_VAAPI_VLD: c_int = 46;
pub const AV_PIX_FMT_VAAPI: c_int = 46;
pub const AV_PIX_FMT_YUV420P16LE: c_int = 47;
pub const AV_PIX_FMT_YUV420P16BE: c_int = 48;
pub const AV_PIX_FMT_YUV422P16LE: c_int = 49;
pub const AV_PIX_FMT_YUV422P16BE: c_int = 50;
pub const AV_PIX_FMT_YUV444P16LE: c_int = 51;
pub const AV_PIX_FMT_YUV444P16BE: c_int = 52;
pub const AV_PIX_FMT_DXVA2_VLD: c_int = 53;
pub const AV_PIX_FMT_RGB444LE: c_int = 54;
pub const AV_PIX_FMT_RGB444BE: c_int = 55;
pub const AV_PIX_FMT_BGR444LE: c_int = 56;
pub const AV_PIX_FMT_BGR444BE: c_int = 57;
pub const AV_PIX_FMT_YA8: c_int = 58;
pub const AV_PIX_FMT_Y400A: c_int = 58;
pub const AV_PIX_FMT_GRAY8A: c_int = 58;
pub const AV_PIX_FMT_BGR48BE: c_int = 59;
pub const AV_PIX_FMT_BGR48LE: c_int = 60;
pub const AV_PIX_FMT_YUV420P9BE: c_int = 61;
pub const AV_PIX_FMT_YUV420P9LE: c_int = 62;
pub const AV_PIX_FMT_YUV420P10BE: c_int = 63;
pub const AV_PIX_FMT_YUV420P10LE: c_int = 64;
pub const AV_PIX_FMT_YUV422P10BE: c_int = 65;
pub const AV_PIX_FMT_YUV422P10LE: c_int = 66;
pub const AV_PIX_FMT_YUV444P9BE: c_int = 67;
pub const AV_PIX_FMT_YUV444P9LE: c_int = 68;
pub const AV_PIX_FMT_YUV444P10BE: c_int = 69;
pub const AV_PIX_FMT_YUV444P10LE: c_int = 70;
pub const AV_PIX_FMT_YUV422P9BE: c_int = 71;
pub const AV_PIX_FMT_YUV422P9LE: c_int = 72;
pub const AV_PIX_FMT_GBRP: c_int = 73;
pub const AV_PIX_FMT_GBR24P: c_int = 73;
pub const AV_PIX_FMT_GBRP9BE: c_int = 74;
pub const AV_PIX_FMT_GBRP9LE: c_int = 75;
pub const AV_PIX_FMT_GBRP10BE: c_int = 76;
pub const AV_PIX_FMT_GBRP10LE: c_int = 77;
pub const AV_PIX_FMT_GBRP16BE: c_int = 78;
pub const AV_PIX_FMT_GBRP16LE: c_int = 79;
pub const AV_PIX_FMT_YUVA422P: c_int = 80;
pub const AV_PIX_FMT_YUVA444P: c_int = 81;
pub const AV_PIX_FMT_YUVA420P9BE: c_int = 82;
pub const AV_PIX_FMT_YUVA420P9LE: c_int = 83;
pub const AV_PIX_FMT_YUVA422P9BE: c_int = 84;
pub const AV_PIX_FMT_YUVA422P9LE: c_int = 85;
pub const AV_PIX_FMT_YUVA444P9BE: c_int = 86;
pub const AV_PIX_FMT_YUVA444P9LE: c_int = 87;
pub const AV_PIX_FMT_YUVA420P10BE: c_int = 88;
pub const AV_PIX_FMT_YUVA420P10LE: c_int = 89;
pub const AV_PIX_FMT_YUVA422P10BE: c_int = 90;
pub const AV_PIX_FMT_YUVA422P10LE: c_int = 91;
pub const AV_PIX_FMT_YUVA444P10BE: c_int = 92;
pub const AV_PIX_FMT_YUVA444P10LE: c_int = 93;
pub const AV_PIX_FMT_YUVA420P16BE: c_int = 94;
pub const AV_PIX_FMT_YUVA420P16LE: c_int = 95;
pub const AV_PIX_FMT_YUVA422P16BE: c_int = 96;
pub const AV_PIX_FMT_YUVA422P16LE: c_int = 97;
pub const AV_PIX_FMT_YUVA444P16BE: c_int = 98;
pub const AV_PIX_FMT_YUVA444P16LE: c_int = 99;
pub const AV_PIX_FMT_VDPAU: c_int = 100;
pub const AV_PIX_FMT_XYZ12LE: c_int = 101;
pub const AV_PIX_FMT_XYZ12BE: c_int = 102;
pub const AV_PIX_FMT_NV16: c_int = 103;
pub const AV_PIX_FMT_NV20LE: c_int = 104;
pub const AV_PIX_FMT_NV20BE: c_int = 105;
pub const AV_PIX_FMT_RGBA64BE: c_int = 106;
pub const AV_PIX_FMT_RGBA64LE: c_int = 107;
pub const AV_PIX_FMT_BGRA64BE: c_int = 108;
pub const AV_PIX_FMT_BGRA64LE: c_int = 109;
pub const AV_PIX_FMT_YVYU422: c_int = 110;
pub const AV_PIX_FMT_YA16BE: c_int = 111;
pub const AV_PIX_FMT_YA16LE: c_int = 112;
pub const AV_PIX_FMT_GBRAP: c_int = 113;
pub const AV_PIX_FMT_GBRAP16BE: c_int = 114;
pub const AV_PIX_FMT_GBRAP16LE: c_int = 115;
pub const AV_PIX_FMT_QSV: c_int = 116;
pub const AV_PIX_FMT_MMAL: c_int = 117;
pub const AV_PIX_FMT_D3D11VA_VLD: c_int = 118;
pub const AV_PIX_FMT_CUDA: c_int = 119;
pub const AV_PIX_FMT_0RGB: c_int = 120;
pub const AV_PIX_FMT_RGB0: c_int = 121;
pub const AV_PIX_FMT_0BGR: c_int = 122;
pub const AV_PIX_FMT_BGR0: c_int = 123;
pub const AV_PIX_FMT_YUV420P12BE: c_int = 124;
pub const AV_PIX_FMT_YUV420P12LE: c_int = 125;
pub const AV_PIX_FMT_YUV420P14BE: c_int = 126;
pub const AV_PIX_FMT_YUV420P14LE: c_int = 127;
pub const AV_PIX_FMT_YUV422P12BE: c_int = 128;
pub const AV_PIX_FMT_YUV422P12LE: c_int = 129;
pub const AV_PIX_FMT_YUV422P14BE: c_int = 130;
pub const AV_PIX_FMT_YUV422P14LE: c_int = 131;
pub const AV_PIX_FMT_YUV444P12BE: c_int = 132;
pub const AV_PIX_FMT_YUV444P12LE: c_int = 133;
pub const AV_PIX_FMT_YUV444P14BE: c_int = 134;
pub const AV_PIX_FMT_YUV444P14LE: c_int = 135;
pub const AV_PIX_FMT_GBRP12BE: c_int = 136;
pub const AV_PIX_FMT_GBRP12LE: c_int = 137;
pub const AV_PIX_FMT_GBRP14BE: c_int = 138;
pub const AV_PIX_FMT_GBRP14LE: c_int = 139;
pub const AV_PIX_FMT_YUVJ411P: c_int = 140;
pub const AV_PIX_FMT_BAYER_BGGR8: c_int = 141;
pub const AV_PIX_FMT_BAYER_RGGB8: c_int = 142;
pub const AV_PIX_FMT_BAYER_GBRG8: c_int = 143;
pub const AV_PIX_FMT_BAYER_GRBG8: c_int = 144;
pub const AV_PIX_FMT_BAYER_BGGR16LE: c_int = 145;
pub const AV_PIX_FMT_BAYER_BGGR16BE: c_int = 146;
pub const AV_PIX_FMT_BAYER_RGGB16LE: c_int = 147;
pub const AV_PIX_FMT_BAYER_RGGB16BE: c_int = 148;
pub const AV_PIX_FMT_BAYER_GBRG16LE: c_int = 149;
pub const AV_PIX_FMT_BAYER_GBRG16BE: c_int = 150;
pub const AV_PIX_FMT_BAYER_GRBG16LE: c_int = 151;
pub const AV_PIX_FMT_BAYER_GRBG16BE: c_int = 152;
pub const AV_PIX_FMT_XVMC: c_int = 153;
pub const AV_PIX_FMT_YUV440P10LE: c_int = 154;
pub const AV_PIX_FMT_YUV440P10BE: c_int = 155;
pub const AV_PIX_FMT_YUV440P12LE: c_int = 156;
pub const AV_PIX_FMT_YUV440P12BE: c_int = 157;
pub const AV_PIX_FMT_AYUV64LE: c_int = 158;
pub const AV_PIX_FMT_AYUV64BE: c_int = 159;
pub const AV_PIX_FMT_VIDEOTOOLBOX: c_int = 160;
pub const AV_PIX_FMT_P010LE: c_int = 161;
pub const AV_PIX_FMT_P010BE: c_int = 162;
pub const AV_PIX_FMT_GBRAP12BE: c_int = 163;
pub const AV_PIX_FMT_GBRAP12LE: c_int = 164;
pub const AV_PIX_FMT_GBRAP10BE: c_int = 165;
pub const AV_PIX_FMT_GBRAP10LE: c_int = 166;
pub const AV_PIX_FMT_MEDIACODEC: c_int = 167;
pub const AV_PIX_FMT_GRAY12BE: c_int = 168;
pub const AV_PIX_FMT_GRAY12LE: c_int = 169;
pub const AV_PIX_FMT_GRAY10BE: c_int = 170;
pub const AV_PIX_FMT_GRAY10LE: c_int = 171;
pub const AV_PIX_FMT_P016LE: c_int = 172;
pub const AV_PIX_FMT_P016BE: c_int = 173;
pub const AV_PIX_FMT_D3D11: c_int = 174;
pub const AV_PIX_FMT_GRAY9BE: c_int = 175;
pub const AV_PIX_FMT_GRAY9LE: c_int = 176;
pub const AV_PIX_FMT_GBRPF32BE: c_int = 177;
pub const AV_PIX_FMT_GBRPF32LE: c_int = 178;
pub const AV_PIX_FMT_GBRAPF32BE: c_int = 179;
pub const AV_PIX_FMT_GBRAPF32LE: c_int = 180;
pub const AV_PIX_FMT_DRM_PRIME: c_int = 181;
pub const AV_PIX_FMT_OPENCL: c_int = 182;
pub const AV_PIX_FMT_GRAY14BE: c_int = 183;
pub const AV_PIX_FMT_GRAY14LE: c_int = 184;
pub const AV_PIX_FMT_GRAYF32BE: c_int = 185;
pub const AV_PIX_FMT_GRAYF32LE: c_int = 186;
pub const AV_PIX_FMT_YUVA422P12BE: c_int = 187;
pub const AV_PIX_FMT_YUVA422P12LE: c_int = 188;
pub const AV_PIX_FMT_YUVA444P12BE: c_int = 189;
pub const AV_PIX_FMT_YUVA444P12LE: c_int = 190;
pub const AV_PIX_FMT_NV24: c_int = 191;
pub const AV_PIX_FMT_NV42: c_int = 192;
pub const AV_PIX_FMT_VULKAN: c_int = 193;
pub const AV_PIX_FMT_Y210BE: c_int = 194;
pub const AV_PIX_FMT_Y210LE: c_int = 195;
pub const AV_PIX_FMT_X2RGB10LE: c_int = 196;
pub const AV_PIX_FMT_X2RGB10BE: c_int = 197;
pub const AV_PIX_FMT_NB: c_int = 198;
pub const enum_AVPixelFormat = c_int;
pub const AVCOL_PRI_RESERVED0: c_int = 0;
pub const AVCOL_PRI_BT709: c_int = 1;
pub const AVCOL_PRI_UNSPECIFIED: c_int = 2;
pub const AVCOL_PRI_RESERVED: c_int = 3;
pub const AVCOL_PRI_BT470M: c_int = 4;
pub const AVCOL_PRI_BT470BG: c_int = 5;
pub const AVCOL_PRI_SMPTE170M: c_int = 6;
pub const AVCOL_PRI_SMPTE240M: c_int = 7;
pub const AVCOL_PRI_FILM: c_int = 8;
pub const AVCOL_PRI_BT2020: c_int = 9;
pub const AVCOL_PRI_SMPTE428: c_int = 10;
pub const AVCOL_PRI_SMPTEST428_1: c_int = 10;
pub const AVCOL_PRI_SMPTE431: c_int = 11;
pub const AVCOL_PRI_SMPTE432: c_int = 12;
pub const AVCOL_PRI_EBU3213: c_int = 22;
pub const AVCOL_PRI_JEDEC_P22: c_int = 22;
pub const AVCOL_PRI_NB: c_int = 23;
pub const enum_AVColorPrimaries = c_uint;
pub const AVCOL_TRC_RESERVED0: c_int = 0;
pub const AVCOL_TRC_BT709: c_int = 1;
pub const AVCOL_TRC_UNSPECIFIED: c_int = 2;
pub const AVCOL_TRC_RESERVED: c_int = 3;
pub const AVCOL_TRC_GAMMA22: c_int = 4;
pub const AVCOL_TRC_GAMMA28: c_int = 5;
pub const AVCOL_TRC_SMPTE170M: c_int = 6;
pub const AVCOL_TRC_SMPTE240M: c_int = 7;
pub const AVCOL_TRC_LINEAR: c_int = 8;
pub const AVCOL_TRC_LOG: c_int = 9;
pub const AVCOL_TRC_LOG_SQRT: c_int = 10;
pub const AVCOL_TRC_IEC61966_2_4: c_int = 11;
pub const AVCOL_TRC_BT1361_ECG: c_int = 12;
pub const AVCOL_TRC_IEC61966_2_1: c_int = 13;
pub const AVCOL_TRC_BT2020_10: c_int = 14;
pub const AVCOL_TRC_BT2020_12: c_int = 15;
pub const AVCOL_TRC_SMPTE2084: c_int = 16;
pub const AVCOL_TRC_SMPTEST2084: c_int = 16;
pub const AVCOL_TRC_SMPTE428: c_int = 17;
pub const AVCOL_TRC_SMPTEST428_1: c_int = 17;
pub const AVCOL_TRC_ARIB_STD_B67: c_int = 18;
pub const AVCOL_TRC_NB: c_int = 19;
pub const enum_AVColorTransferCharacteristic = c_uint;
pub const AVCOL_SPC_RGB: c_int = 0;
pub const AVCOL_SPC_BT709: c_int = 1;
pub const AVCOL_SPC_UNSPECIFIED: c_int = 2;
pub const AVCOL_SPC_RESERVED: c_int = 3;
pub const AVCOL_SPC_FCC: c_int = 4;
pub const AVCOL_SPC_BT470BG: c_int = 5;
pub const AVCOL_SPC_SMPTE170M: c_int = 6;
pub const AVCOL_SPC_SMPTE240M: c_int = 7;
pub const AVCOL_SPC_YCGCO: c_int = 8;
pub const AVCOL_SPC_YCOCG: c_int = 8;
pub const AVCOL_SPC_BT2020_NCL: c_int = 9;
pub const AVCOL_SPC_BT2020_CL: c_int = 10;
pub const AVCOL_SPC_SMPTE2085: c_int = 11;
pub const AVCOL_SPC_CHROMA_DERIVED_NCL: c_int = 12;
pub const AVCOL_SPC_CHROMA_DERIVED_CL: c_int = 13;
pub const AVCOL_SPC_ICTCP: c_int = 14;
pub const AVCOL_SPC_NB: c_int = 15;
pub const enum_AVColorSpace = c_uint;
pub const AVCOL_RANGE_UNSPECIFIED: c_int = 0;
pub const AVCOL_RANGE_MPEG: c_int = 1;
pub const AVCOL_RANGE_JPEG: c_int = 2;
pub const AVCOL_RANGE_NB: c_int = 3;
pub const enum_AVColorRange = c_uint;
pub const AVCHROMA_LOC_UNSPECIFIED: c_int = 0;
pub const AVCHROMA_LOC_LEFT: c_int = 1;
pub const AVCHROMA_LOC_CENTER: c_int = 2;
pub const AVCHROMA_LOC_TOPLEFT: c_int = 3;
pub const AVCHROMA_LOC_TOP: c_int = 4;
pub const AVCHROMA_LOC_BOTTOMLEFT: c_int = 5;
pub const AVCHROMA_LOC_BOTTOM: c_int = 6;
pub const AVCHROMA_LOC_NB: c_int = 7;
pub const enum_AVChromaLocation = c_uint;
pub fn av_x_if_null(arg_p: ?*const anyopaque, arg_x: ?*const anyopaque) callconv(.c) ?*anyopaque {
    var p = arg_p;
    _ = &p;
    var x = arg_x;
    _ = &x;
    return @ptrFromInt(@as(usize, @intCast(@as(isize, @intCast(@intFromPtr(if (p != null) p else x))))));
}
pub extern fn av_int_list_length_for_size(elsize: c_uint, list: ?*const anyopaque, term: u64) c_uint;
pub extern fn av_fopen_utf8(path: [*c]const u8, mode: [*c]const u8) ?*FILE;
pub extern fn av_get_time_base_q() AVRational;
pub extern fn av_fourcc_make_string(buf: [*c]u8, fourcc: u32) [*c]u8;
pub const AV_SAMPLE_FMT_NONE: c_int = -1;
pub const AV_SAMPLE_FMT_U8: c_int = 0;
pub const AV_SAMPLE_FMT_S16: c_int = 1;
pub const AV_SAMPLE_FMT_S32: c_int = 2;
pub const AV_SAMPLE_FMT_FLT: c_int = 3;
pub const AV_SAMPLE_FMT_DBL: c_int = 4;
pub const AV_SAMPLE_FMT_U8P: c_int = 5;
pub const AV_SAMPLE_FMT_S16P: c_int = 6;
pub const AV_SAMPLE_FMT_S32P: c_int = 7;
pub const AV_SAMPLE_FMT_FLTP: c_int = 8;
pub const AV_SAMPLE_FMT_DBLP: c_int = 9;
pub const AV_SAMPLE_FMT_S64: c_int = 10;
pub const AV_SAMPLE_FMT_S64P: c_int = 11;
pub const AV_SAMPLE_FMT_NB: c_int = 12;
pub const enum_AVSampleFormat = c_int;
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
    buffer: ?*AVBuffer = null,
    data: [*c]u8 = null,
    size: c_int = 0,
    pub const av_buffer_ref = __root.av_buffer_ref;
    pub const av_buffer_is_writable = __root.av_buffer_is_writable;
    pub const av_buffer_get_opaque = __root.av_buffer_get_opaque;
    pub const av_buffer_get_ref_count = __root.av_buffer_get_ref_count;
    pub const av_buffer_pool_buffer_get_opaque = __root.av_buffer_pool_buffer_get_opaque;
    pub const av_hwdevice_ctx_init = __root.av_hwdevice_ctx_init;
    pub const av_hwframe_ctx_alloc = __root.av_hwframe_ctx_alloc;
    pub const av_hwframe_ctx_init = __root.av_hwframe_ctx_init;
    pub const av_hwframe_get_buffer = __root.av_hwframe_get_buffer;
    pub const av_hwframe_transfer_get_formats = __root.av_hwframe_transfer_get_formats;
    pub const av_hwdevice_hwconfig_alloc = __root.av_hwdevice_hwconfig_alloc;
    pub const av_hwdevice_get_hwframe_constraints = __root.av_hwdevice_get_hwframe_constraints;
    pub const ref = __root.av_buffer_ref;
    pub const writable = __root.av_buffer_is_writable;
    pub const @"opaque" = __root.av_buffer_get_opaque;
    pub const count = __root.av_buffer_get_ref_count;
    pub const init = __root.av_hwdevice_ctx_init;
    pub const alloc = __root.av_hwframe_ctx_alloc;
    pub const formats = __root.av_hwframe_transfer_get_formats;
    pub const constraints = __root.av_hwdevice_get_hwframe_constraints;
};
pub const AVBufferRef = struct_AVBufferRef;
pub extern fn av_buffer_alloc(size: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_allocz(size: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_create(data: [*c]u8, size: c_int, free: ?*const fn (@"opaque": ?*anyopaque, data: [*c]u8) callconv(.c) void, @"opaque": ?*anyopaque, flags: c_int) [*c]AVBufferRef;
pub extern fn av_buffer_default_free(@"opaque": ?*anyopaque, data: [*c]u8) void;
pub extern fn av_buffer_ref(buf: [*c]AVBufferRef) [*c]AVBufferRef;
pub extern fn av_buffer_unref(buf: [*c][*c]AVBufferRef) void;
pub extern fn av_buffer_is_writable(buf: [*c]const AVBufferRef) c_int;
pub extern fn av_buffer_get_opaque(buf: [*c]const AVBufferRef) ?*anyopaque;
pub extern fn av_buffer_get_ref_count(buf: [*c]const AVBufferRef) c_int;
pub extern fn av_buffer_make_writable(buf: [*c][*c]AVBufferRef) c_int;
pub extern fn av_buffer_realloc(buf: [*c][*c]AVBufferRef, size: c_int) c_int;
pub extern fn av_buffer_replace(dst: [*c][*c]AVBufferRef, src: [*c]AVBufferRef) c_int;
pub const struct_AVBufferPool = opaque {
    pub const av_buffer_pool_get = __root.av_buffer_pool_get;
    pub const get = __root.av_buffer_pool_get;
};
pub const AVBufferPool = struct_AVBufferPool;
pub extern fn av_buffer_pool_init(size: c_int, alloc: ?*const fn (size: c_int) callconv(.c) [*c]AVBufferRef) ?*AVBufferPool;
pub extern fn av_buffer_pool_init2(size: c_int, @"opaque": ?*anyopaque, alloc: ?*const fn (@"opaque": ?*anyopaque, size: c_int) callconv(.c) [*c]AVBufferRef, pool_free: ?*const fn (@"opaque": ?*anyopaque) callconv(.c) void) ?*AVBufferPool;
pub extern fn av_buffer_pool_uninit(pool: [*c]?*AVBufferPool) void;
pub extern fn av_buffer_pool_get(pool: ?*AVBufferPool) [*c]AVBufferRef;
pub extern fn av_buffer_pool_buffer_get_opaque(ref: [*c]AVBufferRef) ?*anyopaque;
pub extern fn av_get_cpu_flags() c_int;
pub extern fn av_force_cpu_flags(flags: c_int) void;
pub extern fn av_set_cpu_flags_mask(mask: c_int) void;
pub extern fn av_parse_cpu_flags(s: [*c]const u8) c_int;
pub extern fn av_parse_cpu_caps(flags: [*c]c_uint, s: [*c]const u8) c_int;
pub extern fn av_cpu_count() c_int;
pub extern fn av_cpu_max_align() usize;
pub const AV_MATRIX_ENCODING_NONE: c_int = 0;
pub const AV_MATRIX_ENCODING_DOLBY: c_int = 1;
pub const AV_MATRIX_ENCODING_DPLII: c_int = 2;
pub const AV_MATRIX_ENCODING_DPLIIX: c_int = 3;
pub const AV_MATRIX_ENCODING_DPLIIZ: c_int = 4;
pub const AV_MATRIX_ENCODING_DOLBYEX: c_int = 5;
pub const AV_MATRIX_ENCODING_DOLBYHEADPHONE: c_int = 6;
pub const AV_MATRIX_ENCODING_NB: c_int = 7;
pub const enum_AVMatrixEncoding = c_uint;
pub extern fn av_get_channel_layout(name: [*c]const u8) u64;
pub extern fn av_get_extended_channel_layout(name: [*c]const u8, channel_layout: [*c]u64, nb_channels: [*c]c_int) c_int;
pub extern fn av_get_channel_layout_string(buf: [*c]u8, buf_size: c_int, nb_channels: c_int, channel_layout: u64) void;
pub const struct_AVBPrint = opaque {
    pub const av_bprint_channel_layout = __root.av_bprint_channel_layout;
    pub const layout = __root.av_bprint_channel_layout;
};
pub extern fn av_bprint_channel_layout(bp: ?*struct_AVBPrint, nb_channels: c_int, channel_layout: u64) void;
pub extern fn av_get_channel_layout_nb_channels(channel_layout: u64) c_int;
pub extern fn av_get_default_channel_layout(nb_channels: c_int) i64;
pub extern fn av_get_channel_layout_channel_index(channel_layout: u64, channel: u64) c_int;
pub extern fn av_channel_layout_extract_channel(channel_layout: u64, index: c_int) u64;
pub extern fn av_get_channel_name(channel: u64) [*c]const u8;
pub extern fn av_get_channel_description(channel: u64) [*c]const u8;
pub extern fn av_get_standard_channel_layout(index: c_uint, layout: [*c]u64, name: [*c][*c]const u8) c_int;
pub const struct_AVDictionaryEntry = extern struct {
    key: [*c]u8 = null,
    value: [*c]u8 = null,
};
pub const AVDictionaryEntry = struct_AVDictionaryEntry;
pub const struct_AVDictionary = opaque {
    pub const av_dict_get = __root.av_dict_get;
    pub const av_dict_count = __root.av_dict_count;
    pub const av_dict_get_string = __root.av_dict_get_string;
    pub const av_packet_pack_dictionary = __root.av_packet_pack_dictionary;
    pub const get = __root.av_dict_get;
    pub const count = __root.av_dict_count;
    pub const string = __root.av_dict_get_string;
    pub const dictionary = __root.av_packet_pack_dictionary;
};
pub const AVDictionary = struct_AVDictionary;
pub extern fn av_dict_get(m: ?*const AVDictionary, key: [*c]const u8, prev: [*c]const AVDictionaryEntry, flags: c_int) [*c]AVDictionaryEntry;
pub extern fn av_dict_count(m: ?*const AVDictionary) c_int;
pub extern fn av_dict_set(pm: [*c]?*AVDictionary, key: [*c]const u8, value: [*c]const u8, flags: c_int) c_int;
pub extern fn av_dict_set_int(pm: [*c]?*AVDictionary, key: [*c]const u8, value: i64, flags: c_int) c_int;
pub extern fn av_dict_parse_string(pm: [*c]?*AVDictionary, str: [*c]const u8, key_val_sep: [*c]const u8, pairs_sep: [*c]const u8, flags: c_int) c_int;
pub extern fn av_dict_copy(dst: [*c]?*AVDictionary, src: ?*const AVDictionary, flags: c_int) c_int;
pub extern fn av_dict_free(m: [*c]?*AVDictionary) void;
pub extern fn av_dict_get_string(m: ?*const AVDictionary, buffer: [*c][*c]u8, key_val_sep: u8, pairs_sep: u8) c_int;
pub const AV_FRAME_DATA_PANSCAN: c_int = 0;
pub const AV_FRAME_DATA_A53_CC: c_int = 1;
pub const AV_FRAME_DATA_STEREO3D: c_int = 2;
pub const AV_FRAME_DATA_MATRIXENCODING: c_int = 3;
pub const AV_FRAME_DATA_DOWNMIX_INFO: c_int = 4;
pub const AV_FRAME_DATA_REPLAYGAIN: c_int = 5;
pub const AV_FRAME_DATA_DISPLAYMATRIX: c_int = 6;
pub const AV_FRAME_DATA_AFD: c_int = 7;
pub const AV_FRAME_DATA_MOTION_VECTORS: c_int = 8;
pub const AV_FRAME_DATA_SKIP_SAMPLES: c_int = 9;
pub const AV_FRAME_DATA_AUDIO_SERVICE_TYPE: c_int = 10;
pub const AV_FRAME_DATA_MASTERING_DISPLAY_METADATA: c_int = 11;
pub const AV_FRAME_DATA_GOP_TIMECODE: c_int = 12;
pub const AV_FRAME_DATA_SPHERICAL: c_int = 13;
pub const AV_FRAME_DATA_CONTENT_LIGHT_LEVEL: c_int = 14;
pub const AV_FRAME_DATA_ICC_PROFILE: c_int = 15;
pub const AV_FRAME_DATA_QP_TABLE_PROPERTIES: c_int = 16;
pub const AV_FRAME_DATA_QP_TABLE_DATA: c_int = 17;
pub const AV_FRAME_DATA_S12M_TIMECODE: c_int = 18;
pub const AV_FRAME_DATA_DYNAMIC_HDR_PLUS: c_int = 19;
pub const AV_FRAME_DATA_REGIONS_OF_INTEREST: c_int = 20;
pub const AV_FRAME_DATA_VIDEO_ENC_PARAMS: c_int = 21;
pub const AV_FRAME_DATA_SEI_UNREGISTERED: c_int = 22;
pub const AV_FRAME_DATA_FILM_GRAIN_PARAMS: c_int = 23;
pub const enum_AVFrameSideDataType = c_uint;
pub const AV_AFD_SAME: c_int = 8;
pub const AV_AFD_4_3: c_int = 9;
pub const AV_AFD_16_9: c_int = 10;
pub const AV_AFD_14_9: c_int = 11;
pub const AV_AFD_4_3_SP_14_9: c_int = 13;
pub const AV_AFD_16_9_SP_14_9: c_int = 14;
pub const AV_AFD_SP_4_3: c_int = 15;
pub const enum_AVActiveFormatDescription = c_uint;
pub const struct_AVFrameSideData = extern struct {
    type: enum_AVFrameSideDataType = @import("std").mem.zeroes(enum_AVFrameSideDataType),
    data: [*c]u8 = null,
    size: c_int = 0,
    metadata: ?*AVDictionary = null,
    buf: [*c]AVBufferRef = null,
};
pub const AVFrameSideData = struct_AVFrameSideData;
pub const struct_AVRegionOfInterest = extern struct {
    self_size: u32 = 0,
    top: c_int = 0,
    bottom: c_int = 0,
    left: c_int = 0,
    right: c_int = 0,
    qoffset: AVRational = @import("std").mem.zeroes(AVRational),
};
pub const AVRegionOfInterest = struct_AVRegionOfInterest;
pub const struct_AVFrame = extern struct {
    data: [8][*c]u8 = @import("std").mem.zeroes([8][*c]u8),
    linesize: [8]c_int = @import("std").mem.zeroes([8]c_int),
    extended_data: [*c][*c]u8 = null,
    width: c_int = 0,
    height: c_int = 0,
    nb_samples: c_int = 0,
    format: c_int = 0,
    key_frame: c_int = 0,
    pict_type: enum_AVPictureType = @import("std").mem.zeroes(enum_AVPictureType),
    sample_aspect_ratio: AVRational = @import("std").mem.zeroes(AVRational),
    pts: i64 = 0,
    pkt_pts: i64 = 0,
    pkt_dts: i64 = 0,
    coded_picture_number: c_int = 0,
    display_picture_number: c_int = 0,
    quality: c_int = 0,
    @"opaque": ?*anyopaque = null,
    @"error": [8]u64 = @import("std").mem.zeroes([8]u64),
    repeat_pict: c_int = 0,
    interlaced_frame: c_int = 0,
    top_field_first: c_int = 0,
    palette_has_changed: c_int = 0,
    reordered_opaque: i64 = 0,
    sample_rate: c_int = 0,
    channel_layout: u64 = 0,
    buf: [8][*c]AVBufferRef = @import("std").mem.zeroes([8][*c]AVBufferRef),
    extended_buf: [*c][*c]AVBufferRef = null,
    nb_extended_buf: c_int = 0,
    side_data: [*c][*c]AVFrameSideData = null,
    nb_side_data: c_int = 0,
    flags: c_int = 0,
    color_range: enum_AVColorRange = @import("std").mem.zeroes(enum_AVColorRange),
    color_primaries: enum_AVColorPrimaries = @import("std").mem.zeroes(enum_AVColorPrimaries),
    color_trc: enum_AVColorTransferCharacteristic = @import("std").mem.zeroes(enum_AVColorTransferCharacteristic),
    colorspace: enum_AVColorSpace = @import("std").mem.zeroes(enum_AVColorSpace),
    chroma_location: enum_AVChromaLocation = @import("std").mem.zeroes(enum_AVChromaLocation),
    best_effort_timestamp: i64 = 0,
    pkt_pos: i64 = 0,
    pkt_duration: i64 = 0,
    metadata: ?*AVDictionary = null,
    decode_error_flags: c_int = 0,
    channels: c_int = 0,
    pkt_size: c_int = 0,
    qscale_table: [*c]i8 = null,
    qstride: c_int = 0,
    qscale_type: c_int = 0,
    qp_table_buf: [*c]AVBufferRef = null,
    hw_frames_ctx: [*c]AVBufferRef = null,
    opaque_ref: [*c]AVBufferRef = null,
    crop_top: usize = 0,
    crop_bottom: usize = 0,
    crop_left: usize = 0,
    crop_right: usize = 0,
    private_ref: [*c]AVBufferRef = null,
    pub const av_frame_get_best_effort_timestamp = __root.av_frame_get_best_effort_timestamp;
    pub const av_frame_set_best_effort_timestamp = __root.av_frame_set_best_effort_timestamp;
    pub const av_frame_get_pkt_duration = __root.av_frame_get_pkt_duration;
    pub const av_frame_set_pkt_duration = __root.av_frame_set_pkt_duration;
    pub const av_frame_get_pkt_pos = __root.av_frame_get_pkt_pos;
    pub const av_frame_set_pkt_pos = __root.av_frame_set_pkt_pos;
    pub const av_frame_get_channel_layout = __root.av_frame_get_channel_layout;
    pub const av_frame_set_channel_layout = __root.av_frame_set_channel_layout;
    pub const av_frame_get_channels = __root.av_frame_get_channels;
    pub const av_frame_set_channels = __root.av_frame_set_channels;
    pub const av_frame_get_sample_rate = __root.av_frame_get_sample_rate;
    pub const av_frame_set_sample_rate = __root.av_frame_set_sample_rate;
    pub const av_frame_get_metadata = __root.av_frame_get_metadata;
    pub const av_frame_set_metadata = __root.av_frame_set_metadata;
    pub const av_frame_get_decode_error_flags = __root.av_frame_get_decode_error_flags;
    pub const av_frame_set_decode_error_flags = __root.av_frame_set_decode_error_flags;
    pub const av_frame_get_pkt_size = __root.av_frame_get_pkt_size;
    pub const av_frame_set_pkt_size = __root.av_frame_set_pkt_size;
    pub const av_frame_get_qp_table = __root.av_frame_get_qp_table;
    pub const av_frame_set_qp_table = __root.av_frame_set_qp_table;
    pub const av_frame_get_colorspace = __root.av_frame_get_colorspace;
    pub const av_frame_set_colorspace = __root.av_frame_set_colorspace;
    pub const av_frame_get_color_range = __root.av_frame_get_color_range;
    pub const av_frame_set_color_range = __root.av_frame_set_color_range;
    pub const av_frame_ref = __root.av_frame_ref;
    pub const av_frame_clone = __root.av_frame_clone;
    pub const av_frame_unref = __root.av_frame_unref;
    pub const av_frame_move_ref = __root.av_frame_move_ref;
    pub const av_frame_get_buffer = __root.av_frame_get_buffer;
    pub const av_frame_is_writable = __root.av_frame_is_writable;
    pub const av_frame_make_writable = __root.av_frame_make_writable;
    pub const av_frame_copy = __root.av_frame_copy;
    pub const av_frame_copy_props = __root.av_frame_copy_props;
    pub const av_frame_get_plane_buffer = __root.av_frame_get_plane_buffer;
    pub const av_frame_new_side_data = __root.av_frame_new_side_data;
    pub const av_frame_new_side_data_from_buf = __root.av_frame_new_side_data_from_buf;
    pub const av_frame_get_side_data = __root.av_frame_get_side_data;
    pub const av_frame_remove_side_data = __root.av_frame_remove_side_data;
    pub const av_frame_apply_cropping = __root.av_frame_apply_cropping;
    pub const av_hwframe_transfer_data = __root.av_hwframe_transfer_data;
    pub const av_hwframe_map = __root.av_hwframe_map;
    pub const avcodec_fill_audio_frame = __root.avcodec_fill_audio_frame;
    pub const timestamp = __root.av_frame_get_best_effort_timestamp;
    pub const duration = __root.av_frame_get_pkt_duration;
    pub const pos = __root.av_frame_get_pkt_pos;
    pub const layout = __root.av_frame_get_channel_layout;
    pub const rate = __root.av_frame_get_sample_rate;
    pub const size = __root.av_frame_get_pkt_size;
    pub const table = __root.av_frame_get_qp_table;
    pub const range = __root.av_frame_get_color_range;
    pub const ref = __root.av_frame_ref;
    pub const clone = __root.av_frame_clone;
    pub const unref = __root.av_frame_unref;
    pub const buffer = __root.av_frame_get_buffer;
    pub const writable = __root.av_frame_is_writable;
    pub const copy = __root.av_frame_copy;
    pub const props = __root.av_frame_copy_props;
    pub const cropping = __root.av_frame_apply_cropping;
    pub const map = __root.av_hwframe_map;
    pub const frame = __root.avcodec_fill_audio_frame;
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
pub extern fn av_frame_get_qp_table(f: [*c]AVFrame, stride: [*c]c_int, @"type": [*c]c_int) [*c]i8;
pub extern fn av_frame_set_qp_table(f: [*c]AVFrame, buf: [*c]AVBufferRef, stride: c_int, @"type": c_int) c_int;
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
pub extern fn av_frame_new_side_data(frame: [*c]AVFrame, @"type": enum_AVFrameSideDataType, size: c_int) [*c]AVFrameSideData;
pub extern fn av_frame_new_side_data_from_buf(frame: [*c]AVFrame, @"type": enum_AVFrameSideDataType, buf: [*c]AVBufferRef) [*c]AVFrameSideData;
pub extern fn av_frame_get_side_data(frame: [*c]const AVFrame, @"type": enum_AVFrameSideDataType) [*c]AVFrameSideData;
pub extern fn av_frame_remove_side_data(frame: [*c]AVFrame, @"type": enum_AVFrameSideDataType) void;
pub const AV_FRAME_CROP_UNALIGNED: c_int = 1;
const enum_unnamed_2 = c_uint;
pub extern fn av_frame_apply_cropping(frame: [*c]AVFrame, flags: c_int) c_int;
pub extern fn av_frame_side_data_name(@"type": enum_AVFrameSideDataType) [*c]const u8;
pub const AV_HWDEVICE_TYPE_NONE: c_int = 0;
pub const AV_HWDEVICE_TYPE_VDPAU: c_int = 1;
pub const AV_HWDEVICE_TYPE_CUDA: c_int = 2;
pub const AV_HWDEVICE_TYPE_VAAPI: c_int = 3;
pub const AV_HWDEVICE_TYPE_DXVA2: c_int = 4;
pub const AV_HWDEVICE_TYPE_QSV: c_int = 5;
pub const AV_HWDEVICE_TYPE_VIDEOTOOLBOX: c_int = 6;
pub const AV_HWDEVICE_TYPE_D3D11VA: c_int = 7;
pub const AV_HWDEVICE_TYPE_DRM: c_int = 8;
pub const AV_HWDEVICE_TYPE_OPENCL: c_int = 9;
pub const AV_HWDEVICE_TYPE_MEDIACODEC: c_int = 10;
pub const AV_HWDEVICE_TYPE_VULKAN: c_int = 11;
pub const enum_AVHWDeviceType = c_uint;
pub const struct_AVHWDeviceInternal = opaque {};
pub const AVHWDeviceInternal = struct_AVHWDeviceInternal;
pub const struct_AVHWDeviceContext = extern struct {
    av_class: [*c]const AVClass = null,
    internal: ?*AVHWDeviceInternal = null,
    type: enum_AVHWDeviceType = @import("std").mem.zeroes(enum_AVHWDeviceType),
    hwctx: ?*anyopaque = null,
    free: ?*const fn (ctx: [*c]struct_AVHWDeviceContext) callconv(.c) void = null,
    user_opaque: ?*anyopaque = null,
};
pub const AVHWDeviceContext = struct_AVHWDeviceContext;
pub const struct_AVHWFramesInternal = opaque {};
pub const AVHWFramesInternal = struct_AVHWFramesInternal;
pub const struct_AVHWFramesContext = extern struct {
    av_class: [*c]const AVClass = null,
    internal: ?*AVHWFramesInternal = null,
    device_ref: [*c]AVBufferRef = null,
    device_ctx: [*c]AVHWDeviceContext = null,
    hwctx: ?*anyopaque = null,
    free: ?*const fn (ctx: [*c]struct_AVHWFramesContext) callconv(.c) void = null,
    user_opaque: ?*anyopaque = null,
    pool: ?*AVBufferPool = null,
    initial_pool_size: c_int = 0,
    format: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    sw_format: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    width: c_int = 0,
    height: c_int = 0,
};
pub const AVHWFramesContext = struct_AVHWFramesContext;
pub extern fn av_hwdevice_find_type_by_name(name: [*c]const u8) enum_AVHWDeviceType;
pub extern fn av_hwdevice_get_type_name(@"type": enum_AVHWDeviceType) [*c]const u8;
pub extern fn av_hwdevice_iterate_types(prev: enum_AVHWDeviceType) enum_AVHWDeviceType;
pub extern fn av_hwdevice_ctx_alloc(@"type": enum_AVHWDeviceType) [*c]AVBufferRef;
pub extern fn av_hwdevice_ctx_init(ref: [*c]AVBufferRef) c_int;
pub extern fn av_hwdevice_ctx_create(device_ctx: [*c][*c]AVBufferRef, @"type": enum_AVHWDeviceType, device: [*c]const u8, opts: ?*AVDictionary, flags: c_int) c_int;
pub extern fn av_hwdevice_ctx_create_derived(dst_ctx: [*c][*c]AVBufferRef, @"type": enum_AVHWDeviceType, src_ctx: [*c]AVBufferRef, flags: c_int) c_int;
pub extern fn av_hwdevice_ctx_create_derived_opts(dst_ctx: [*c][*c]AVBufferRef, @"type": enum_AVHWDeviceType, src_ctx: [*c]AVBufferRef, options: ?*AVDictionary, flags: c_int) c_int;
pub extern fn av_hwframe_ctx_alloc(device_ctx: [*c]AVBufferRef) [*c]AVBufferRef;
pub extern fn av_hwframe_ctx_init(ref: [*c]AVBufferRef) c_int;
pub extern fn av_hwframe_get_buffer(hwframe_ctx: [*c]AVBufferRef, frame: [*c]AVFrame, flags: c_int) c_int;
pub extern fn av_hwframe_transfer_data(dst: [*c]AVFrame, src: [*c]const AVFrame, flags: c_int) c_int;
pub const AV_HWFRAME_TRANSFER_DIRECTION_FROM: c_int = 0;
pub const AV_HWFRAME_TRANSFER_DIRECTION_TO: c_int = 1;
pub const enum_AVHWFrameTransferDirection = c_uint;
pub extern fn av_hwframe_transfer_get_formats(hwframe_ctx: [*c]AVBufferRef, dir: enum_AVHWFrameTransferDirection, formats: [*c][*c]enum_AVPixelFormat, flags: c_int) c_int;
pub const struct_AVHWFramesConstraints = extern struct {
    valid_hw_formats: [*c]enum_AVPixelFormat = null,
    valid_sw_formats: [*c]enum_AVPixelFormat = null,
    min_width: c_int = 0,
    min_height: c_int = 0,
    max_width: c_int = 0,
    max_height: c_int = 0,
};
pub const AVHWFramesConstraints = struct_AVHWFramesConstraints;
pub extern fn av_hwdevice_hwconfig_alloc(device_ctx: [*c]AVBufferRef) ?*anyopaque;
pub extern fn av_hwdevice_get_hwframe_constraints(ref: [*c]AVBufferRef, hwconfig: ?*const anyopaque) [*c]AVHWFramesConstraints;
pub extern fn av_hwframe_constraints_free(constraints: [*c][*c]AVHWFramesConstraints) void;
pub const AV_HWFRAME_MAP_READ: c_int = 1;
pub const AV_HWFRAME_MAP_WRITE: c_int = 2;
pub const AV_HWFRAME_MAP_OVERWRITE: c_int = 4;
pub const AV_HWFRAME_MAP_DIRECT: c_int = 8;
const enum_unnamed_3 = c_uint;
pub extern fn av_hwframe_map(dst: [*c]AVFrame, src: [*c]const AVFrame, flags: c_int) c_int;
pub extern fn av_hwframe_ctx_create_derived(derived_frame_ctx: [*c][*c]AVBufferRef, format: enum_AVPixelFormat, derived_device_ctx: [*c]AVBufferRef, source_frame_ctx: [*c]AVBufferRef, flags: c_int) c_int;
pub const AV_CODEC_ID_NONE: c_int = 0;
pub const AV_CODEC_ID_MPEG1VIDEO: c_int = 1;
pub const AV_CODEC_ID_MPEG2VIDEO: c_int = 2;
pub const AV_CODEC_ID_H261: c_int = 3;
pub const AV_CODEC_ID_H263: c_int = 4;
pub const AV_CODEC_ID_RV10: c_int = 5;
pub const AV_CODEC_ID_RV20: c_int = 6;
pub const AV_CODEC_ID_MJPEG: c_int = 7;
pub const AV_CODEC_ID_MJPEGB: c_int = 8;
pub const AV_CODEC_ID_LJPEG: c_int = 9;
pub const AV_CODEC_ID_SP5X: c_int = 10;
pub const AV_CODEC_ID_JPEGLS: c_int = 11;
pub const AV_CODEC_ID_MPEG4: c_int = 12;
pub const AV_CODEC_ID_RAWVIDEO: c_int = 13;
pub const AV_CODEC_ID_MSMPEG4V1: c_int = 14;
pub const AV_CODEC_ID_MSMPEG4V2: c_int = 15;
pub const AV_CODEC_ID_MSMPEG4V3: c_int = 16;
pub const AV_CODEC_ID_WMV1: c_int = 17;
pub const AV_CODEC_ID_WMV2: c_int = 18;
pub const AV_CODEC_ID_H263P: c_int = 19;
pub const AV_CODEC_ID_H263I: c_int = 20;
pub const AV_CODEC_ID_FLV1: c_int = 21;
pub const AV_CODEC_ID_SVQ1: c_int = 22;
pub const AV_CODEC_ID_SVQ3: c_int = 23;
pub const AV_CODEC_ID_DVVIDEO: c_int = 24;
pub const AV_CODEC_ID_HUFFYUV: c_int = 25;
pub const AV_CODEC_ID_CYUV: c_int = 26;
pub const AV_CODEC_ID_H264: c_int = 27;
pub const AV_CODEC_ID_INDEO3: c_int = 28;
pub const AV_CODEC_ID_VP3: c_int = 29;
pub const AV_CODEC_ID_THEORA: c_int = 30;
pub const AV_CODEC_ID_ASV1: c_int = 31;
pub const AV_CODEC_ID_ASV2: c_int = 32;
pub const AV_CODEC_ID_FFV1: c_int = 33;
pub const AV_CODEC_ID_4XM: c_int = 34;
pub const AV_CODEC_ID_VCR1: c_int = 35;
pub const AV_CODEC_ID_CLJR: c_int = 36;
pub const AV_CODEC_ID_MDEC: c_int = 37;
pub const AV_CODEC_ID_ROQ: c_int = 38;
pub const AV_CODEC_ID_INTERPLAY_VIDEO: c_int = 39;
pub const AV_CODEC_ID_XAN_WC3: c_int = 40;
pub const AV_CODEC_ID_XAN_WC4: c_int = 41;
pub const AV_CODEC_ID_RPZA: c_int = 42;
pub const AV_CODEC_ID_CINEPAK: c_int = 43;
pub const AV_CODEC_ID_WS_VQA: c_int = 44;
pub const AV_CODEC_ID_MSRLE: c_int = 45;
pub const AV_CODEC_ID_MSVIDEO1: c_int = 46;
pub const AV_CODEC_ID_IDCIN: c_int = 47;
pub const AV_CODEC_ID_8BPS: c_int = 48;
pub const AV_CODEC_ID_SMC: c_int = 49;
pub const AV_CODEC_ID_FLIC: c_int = 50;
pub const AV_CODEC_ID_TRUEMOTION1: c_int = 51;
pub const AV_CODEC_ID_VMDVIDEO: c_int = 52;
pub const AV_CODEC_ID_MSZH: c_int = 53;
pub const AV_CODEC_ID_ZLIB: c_int = 54;
pub const AV_CODEC_ID_QTRLE: c_int = 55;
pub const AV_CODEC_ID_TSCC: c_int = 56;
pub const AV_CODEC_ID_ULTI: c_int = 57;
pub const AV_CODEC_ID_QDRAW: c_int = 58;
pub const AV_CODEC_ID_VIXL: c_int = 59;
pub const AV_CODEC_ID_QPEG: c_int = 60;
pub const AV_CODEC_ID_PNG: c_int = 61;
pub const AV_CODEC_ID_PPM: c_int = 62;
pub const AV_CODEC_ID_PBM: c_int = 63;
pub const AV_CODEC_ID_PGM: c_int = 64;
pub const AV_CODEC_ID_PGMYUV: c_int = 65;
pub const AV_CODEC_ID_PAM: c_int = 66;
pub const AV_CODEC_ID_FFVHUFF: c_int = 67;
pub const AV_CODEC_ID_RV30: c_int = 68;
pub const AV_CODEC_ID_RV40: c_int = 69;
pub const AV_CODEC_ID_VC1: c_int = 70;
pub const AV_CODEC_ID_WMV3: c_int = 71;
pub const AV_CODEC_ID_LOCO: c_int = 72;
pub const AV_CODEC_ID_WNV1: c_int = 73;
pub const AV_CODEC_ID_AASC: c_int = 74;
pub const AV_CODEC_ID_INDEO2: c_int = 75;
pub const AV_CODEC_ID_FRAPS: c_int = 76;
pub const AV_CODEC_ID_TRUEMOTION2: c_int = 77;
pub const AV_CODEC_ID_BMP: c_int = 78;
pub const AV_CODEC_ID_CSCD: c_int = 79;
pub const AV_CODEC_ID_MMVIDEO: c_int = 80;
pub const AV_CODEC_ID_ZMBV: c_int = 81;
pub const AV_CODEC_ID_AVS: c_int = 82;
pub const AV_CODEC_ID_SMACKVIDEO: c_int = 83;
pub const AV_CODEC_ID_NUV: c_int = 84;
pub const AV_CODEC_ID_KMVC: c_int = 85;
pub const AV_CODEC_ID_FLASHSV: c_int = 86;
pub const AV_CODEC_ID_CAVS: c_int = 87;
pub const AV_CODEC_ID_JPEG2000: c_int = 88;
pub const AV_CODEC_ID_VMNC: c_int = 89;
pub const AV_CODEC_ID_VP5: c_int = 90;
pub const AV_CODEC_ID_VP6: c_int = 91;
pub const AV_CODEC_ID_VP6F: c_int = 92;
pub const AV_CODEC_ID_TARGA: c_int = 93;
pub const AV_CODEC_ID_DSICINVIDEO: c_int = 94;
pub const AV_CODEC_ID_TIERTEXSEQVIDEO: c_int = 95;
pub const AV_CODEC_ID_TIFF: c_int = 96;
pub const AV_CODEC_ID_GIF: c_int = 97;
pub const AV_CODEC_ID_DXA: c_int = 98;
pub const AV_CODEC_ID_DNXHD: c_int = 99;
pub const AV_CODEC_ID_THP: c_int = 100;
pub const AV_CODEC_ID_SGI: c_int = 101;
pub const AV_CODEC_ID_C93: c_int = 102;
pub const AV_CODEC_ID_BETHSOFTVID: c_int = 103;
pub const AV_CODEC_ID_PTX: c_int = 104;
pub const AV_CODEC_ID_TXD: c_int = 105;
pub const AV_CODEC_ID_VP6A: c_int = 106;
pub const AV_CODEC_ID_AMV: c_int = 107;
pub const AV_CODEC_ID_VB: c_int = 108;
pub const AV_CODEC_ID_PCX: c_int = 109;
pub const AV_CODEC_ID_SUNRAST: c_int = 110;
pub const AV_CODEC_ID_INDEO4: c_int = 111;
pub const AV_CODEC_ID_INDEO5: c_int = 112;
pub const AV_CODEC_ID_MIMIC: c_int = 113;
pub const AV_CODEC_ID_RL2: c_int = 114;
pub const AV_CODEC_ID_ESCAPE124: c_int = 115;
pub const AV_CODEC_ID_DIRAC: c_int = 116;
pub const AV_CODEC_ID_BFI: c_int = 117;
pub const AV_CODEC_ID_CMV: c_int = 118;
pub const AV_CODEC_ID_MOTIONPIXELS: c_int = 119;
pub const AV_CODEC_ID_TGV: c_int = 120;
pub const AV_CODEC_ID_TGQ: c_int = 121;
pub const AV_CODEC_ID_TQI: c_int = 122;
pub const AV_CODEC_ID_AURA: c_int = 123;
pub const AV_CODEC_ID_AURA2: c_int = 124;
pub const AV_CODEC_ID_V210X: c_int = 125;
pub const AV_CODEC_ID_TMV: c_int = 126;
pub const AV_CODEC_ID_V210: c_int = 127;
pub const AV_CODEC_ID_DPX: c_int = 128;
pub const AV_CODEC_ID_MAD: c_int = 129;
pub const AV_CODEC_ID_FRWU: c_int = 130;
pub const AV_CODEC_ID_FLASHSV2: c_int = 131;
pub const AV_CODEC_ID_CDGRAPHICS: c_int = 132;
pub const AV_CODEC_ID_R210: c_int = 133;
pub const AV_CODEC_ID_ANM: c_int = 134;
pub const AV_CODEC_ID_BINKVIDEO: c_int = 135;
pub const AV_CODEC_ID_IFF_ILBM: c_int = 136;
pub const AV_CODEC_ID_KGV1: c_int = 137;
pub const AV_CODEC_ID_YOP: c_int = 138;
pub const AV_CODEC_ID_VP8: c_int = 139;
pub const AV_CODEC_ID_PICTOR: c_int = 140;
pub const AV_CODEC_ID_ANSI: c_int = 141;
pub const AV_CODEC_ID_A64_MULTI: c_int = 142;
pub const AV_CODEC_ID_A64_MULTI5: c_int = 143;
pub const AV_CODEC_ID_R10K: c_int = 144;
pub const AV_CODEC_ID_MXPEG: c_int = 145;
pub const AV_CODEC_ID_LAGARITH: c_int = 146;
pub const AV_CODEC_ID_PRORES: c_int = 147;
pub const AV_CODEC_ID_JV: c_int = 148;
pub const AV_CODEC_ID_DFA: c_int = 149;
pub const AV_CODEC_ID_WMV3IMAGE: c_int = 150;
pub const AV_CODEC_ID_VC1IMAGE: c_int = 151;
pub const AV_CODEC_ID_UTVIDEO: c_int = 152;
pub const AV_CODEC_ID_BMV_VIDEO: c_int = 153;
pub const AV_CODEC_ID_VBLE: c_int = 154;
pub const AV_CODEC_ID_DXTORY: c_int = 155;
pub const AV_CODEC_ID_V410: c_int = 156;
pub const AV_CODEC_ID_XWD: c_int = 157;
pub const AV_CODEC_ID_CDXL: c_int = 158;
pub const AV_CODEC_ID_XBM: c_int = 159;
pub const AV_CODEC_ID_ZEROCODEC: c_int = 160;
pub const AV_CODEC_ID_MSS1: c_int = 161;
pub const AV_CODEC_ID_MSA1: c_int = 162;
pub const AV_CODEC_ID_TSCC2: c_int = 163;
pub const AV_CODEC_ID_MTS2: c_int = 164;
pub const AV_CODEC_ID_CLLC: c_int = 165;
pub const AV_CODEC_ID_MSS2: c_int = 166;
pub const AV_CODEC_ID_VP9: c_int = 167;
pub const AV_CODEC_ID_AIC: c_int = 168;
pub const AV_CODEC_ID_ESCAPE130: c_int = 169;
pub const AV_CODEC_ID_G2M: c_int = 170;
pub const AV_CODEC_ID_WEBP: c_int = 171;
pub const AV_CODEC_ID_HNM4_VIDEO: c_int = 172;
pub const AV_CODEC_ID_HEVC: c_int = 173;
pub const AV_CODEC_ID_FIC: c_int = 174;
pub const AV_CODEC_ID_ALIAS_PIX: c_int = 175;
pub const AV_CODEC_ID_BRENDER_PIX: c_int = 176;
pub const AV_CODEC_ID_PAF_VIDEO: c_int = 177;
pub const AV_CODEC_ID_EXR: c_int = 178;
pub const AV_CODEC_ID_VP7: c_int = 179;
pub const AV_CODEC_ID_SANM: c_int = 180;
pub const AV_CODEC_ID_SGIRLE: c_int = 181;
pub const AV_CODEC_ID_MVC1: c_int = 182;
pub const AV_CODEC_ID_MVC2: c_int = 183;
pub const AV_CODEC_ID_HQX: c_int = 184;
pub const AV_CODEC_ID_TDSC: c_int = 185;
pub const AV_CODEC_ID_HQ_HQA: c_int = 186;
pub const AV_CODEC_ID_HAP: c_int = 187;
pub const AV_CODEC_ID_DDS: c_int = 188;
pub const AV_CODEC_ID_DXV: c_int = 189;
pub const AV_CODEC_ID_SCREENPRESSO: c_int = 190;
pub const AV_CODEC_ID_RSCC: c_int = 191;
pub const AV_CODEC_ID_AVS2: c_int = 192;
pub const AV_CODEC_ID_PGX: c_int = 193;
pub const AV_CODEC_ID_AVS3: c_int = 194;
pub const AV_CODEC_ID_MSP2: c_int = 195;
pub const AV_CODEC_ID_VVC: c_int = 196;
pub const AV_CODEC_ID_Y41P: c_int = 32768;
pub const AV_CODEC_ID_AVRP: c_int = 32769;
pub const AV_CODEC_ID_012V: c_int = 32770;
pub const AV_CODEC_ID_AVUI: c_int = 32771;
pub const AV_CODEC_ID_AYUV: c_int = 32772;
pub const AV_CODEC_ID_TARGA_Y216: c_int = 32773;
pub const AV_CODEC_ID_V308: c_int = 32774;
pub const AV_CODEC_ID_V408: c_int = 32775;
pub const AV_CODEC_ID_YUV4: c_int = 32776;
pub const AV_CODEC_ID_AVRN: c_int = 32777;
pub const AV_CODEC_ID_CPIA: c_int = 32778;
pub const AV_CODEC_ID_XFACE: c_int = 32779;
pub const AV_CODEC_ID_SNOW: c_int = 32780;
pub const AV_CODEC_ID_SMVJPEG: c_int = 32781;
pub const AV_CODEC_ID_APNG: c_int = 32782;
pub const AV_CODEC_ID_DAALA: c_int = 32783;
pub const AV_CODEC_ID_CFHD: c_int = 32784;
pub const AV_CODEC_ID_TRUEMOTION2RT: c_int = 32785;
pub const AV_CODEC_ID_M101: c_int = 32786;
pub const AV_CODEC_ID_MAGICYUV: c_int = 32787;
pub const AV_CODEC_ID_SHEERVIDEO: c_int = 32788;
pub const AV_CODEC_ID_YLC: c_int = 32789;
pub const AV_CODEC_ID_PSD: c_int = 32790;
pub const AV_CODEC_ID_PIXLET: c_int = 32791;
pub const AV_CODEC_ID_SPEEDHQ: c_int = 32792;
pub const AV_CODEC_ID_FMVC: c_int = 32793;
pub const AV_CODEC_ID_SCPR: c_int = 32794;
pub const AV_CODEC_ID_CLEARVIDEO: c_int = 32795;
pub const AV_CODEC_ID_XPM: c_int = 32796;
pub const AV_CODEC_ID_AV1: c_int = 32797;
pub const AV_CODEC_ID_BITPACKED: c_int = 32798;
pub const AV_CODEC_ID_MSCC: c_int = 32799;
pub const AV_CODEC_ID_SRGC: c_int = 32800;
pub const AV_CODEC_ID_SVG: c_int = 32801;
pub const AV_CODEC_ID_GDV: c_int = 32802;
pub const AV_CODEC_ID_FITS: c_int = 32803;
pub const AV_CODEC_ID_IMM4: c_int = 32804;
pub const AV_CODEC_ID_PROSUMER: c_int = 32805;
pub const AV_CODEC_ID_MWSC: c_int = 32806;
pub const AV_CODEC_ID_WCMV: c_int = 32807;
pub const AV_CODEC_ID_RASC: c_int = 32808;
pub const AV_CODEC_ID_HYMT: c_int = 32809;
pub const AV_CODEC_ID_ARBC: c_int = 32810;
pub const AV_CODEC_ID_AGM: c_int = 32811;
pub const AV_CODEC_ID_LSCR: c_int = 32812;
pub const AV_CODEC_ID_VP4: c_int = 32813;
pub const AV_CODEC_ID_IMM5: c_int = 32814;
pub const AV_CODEC_ID_MVDV: c_int = 32815;
pub const AV_CODEC_ID_MVHA: c_int = 32816;
pub const AV_CODEC_ID_CDTOONS: c_int = 32817;
pub const AV_CODEC_ID_MV30: c_int = 32818;
pub const AV_CODEC_ID_NOTCHLC: c_int = 32819;
pub const AV_CODEC_ID_PFM: c_int = 32820;
pub const AV_CODEC_ID_MOBICLIP: c_int = 32821;
pub const AV_CODEC_ID_PHOTOCD: c_int = 32822;
pub const AV_CODEC_ID_IPU: c_int = 32823;
pub const AV_CODEC_ID_ARGO: c_int = 32824;
pub const AV_CODEC_ID_CRI: c_int = 32825;
pub const AV_CODEC_ID_SIMBIOSIS_IMX: c_int = 32826;
pub const AV_CODEC_ID_SGA_VIDEO: c_int = 32827;
pub const AV_CODEC_ID_FIRST_AUDIO: c_int = 65536;
pub const AV_CODEC_ID_PCM_S16LE: c_int = 65536;
pub const AV_CODEC_ID_PCM_S16BE: c_int = 65537;
pub const AV_CODEC_ID_PCM_U16LE: c_int = 65538;
pub const AV_CODEC_ID_PCM_U16BE: c_int = 65539;
pub const AV_CODEC_ID_PCM_S8: c_int = 65540;
pub const AV_CODEC_ID_PCM_U8: c_int = 65541;
pub const AV_CODEC_ID_PCM_MULAW: c_int = 65542;
pub const AV_CODEC_ID_PCM_ALAW: c_int = 65543;
pub const AV_CODEC_ID_PCM_S32LE: c_int = 65544;
pub const AV_CODEC_ID_PCM_S32BE: c_int = 65545;
pub const AV_CODEC_ID_PCM_U32LE: c_int = 65546;
pub const AV_CODEC_ID_PCM_U32BE: c_int = 65547;
pub const AV_CODEC_ID_PCM_S24LE: c_int = 65548;
pub const AV_CODEC_ID_PCM_S24BE: c_int = 65549;
pub const AV_CODEC_ID_PCM_U24LE: c_int = 65550;
pub const AV_CODEC_ID_PCM_U24BE: c_int = 65551;
pub const AV_CODEC_ID_PCM_S24DAUD: c_int = 65552;
pub const AV_CODEC_ID_PCM_ZORK: c_int = 65553;
pub const AV_CODEC_ID_PCM_S16LE_PLANAR: c_int = 65554;
pub const AV_CODEC_ID_PCM_DVD: c_int = 65555;
pub const AV_CODEC_ID_PCM_F32BE: c_int = 65556;
pub const AV_CODEC_ID_PCM_F32LE: c_int = 65557;
pub const AV_CODEC_ID_PCM_F64BE: c_int = 65558;
pub const AV_CODEC_ID_PCM_F64LE: c_int = 65559;
pub const AV_CODEC_ID_PCM_BLURAY: c_int = 65560;
pub const AV_CODEC_ID_PCM_LXF: c_int = 65561;
pub const AV_CODEC_ID_S302M: c_int = 65562;
pub const AV_CODEC_ID_PCM_S8_PLANAR: c_int = 65563;
pub const AV_CODEC_ID_PCM_S24LE_PLANAR: c_int = 65564;
pub const AV_CODEC_ID_PCM_S32LE_PLANAR: c_int = 65565;
pub const AV_CODEC_ID_PCM_S16BE_PLANAR: c_int = 65566;
pub const AV_CODEC_ID_PCM_S64LE: c_int = 67584;
pub const AV_CODEC_ID_PCM_S64BE: c_int = 67585;
pub const AV_CODEC_ID_PCM_F16LE: c_int = 67586;
pub const AV_CODEC_ID_PCM_F24LE: c_int = 67587;
pub const AV_CODEC_ID_PCM_VIDC: c_int = 67588;
pub const AV_CODEC_ID_PCM_SGA: c_int = 67589;
pub const AV_CODEC_ID_ADPCM_IMA_QT: c_int = 69632;
pub const AV_CODEC_ID_ADPCM_IMA_WAV: c_int = 69633;
pub const AV_CODEC_ID_ADPCM_IMA_DK3: c_int = 69634;
pub const AV_CODEC_ID_ADPCM_IMA_DK4: c_int = 69635;
pub const AV_CODEC_ID_ADPCM_IMA_WS: c_int = 69636;
pub const AV_CODEC_ID_ADPCM_IMA_SMJPEG: c_int = 69637;
pub const AV_CODEC_ID_ADPCM_MS: c_int = 69638;
pub const AV_CODEC_ID_ADPCM_4XM: c_int = 69639;
pub const AV_CODEC_ID_ADPCM_XA: c_int = 69640;
pub const AV_CODEC_ID_ADPCM_ADX: c_int = 69641;
pub const AV_CODEC_ID_ADPCM_EA: c_int = 69642;
pub const AV_CODEC_ID_ADPCM_G726: c_int = 69643;
pub const AV_CODEC_ID_ADPCM_CT: c_int = 69644;
pub const AV_CODEC_ID_ADPCM_SWF: c_int = 69645;
pub const AV_CODEC_ID_ADPCM_YAMAHA: c_int = 69646;
pub const AV_CODEC_ID_ADPCM_SBPRO_4: c_int = 69647;
pub const AV_CODEC_ID_ADPCM_SBPRO_3: c_int = 69648;
pub const AV_CODEC_ID_ADPCM_SBPRO_2: c_int = 69649;
pub const AV_CODEC_ID_ADPCM_THP: c_int = 69650;
pub const AV_CODEC_ID_ADPCM_IMA_AMV: c_int = 69651;
pub const AV_CODEC_ID_ADPCM_EA_R1: c_int = 69652;
pub const AV_CODEC_ID_ADPCM_EA_R3: c_int = 69653;
pub const AV_CODEC_ID_ADPCM_EA_R2: c_int = 69654;
pub const AV_CODEC_ID_ADPCM_IMA_EA_SEAD: c_int = 69655;
pub const AV_CODEC_ID_ADPCM_IMA_EA_EACS: c_int = 69656;
pub const AV_CODEC_ID_ADPCM_EA_XAS: c_int = 69657;
pub const AV_CODEC_ID_ADPCM_EA_MAXIS_XA: c_int = 69658;
pub const AV_CODEC_ID_ADPCM_IMA_ISS: c_int = 69659;
pub const AV_CODEC_ID_ADPCM_G722: c_int = 69660;
pub const AV_CODEC_ID_ADPCM_IMA_APC: c_int = 69661;
pub const AV_CODEC_ID_ADPCM_VIMA: c_int = 69662;
pub const AV_CODEC_ID_ADPCM_AFC: c_int = 71680;
pub const AV_CODEC_ID_ADPCM_IMA_OKI: c_int = 71681;
pub const AV_CODEC_ID_ADPCM_DTK: c_int = 71682;
pub const AV_CODEC_ID_ADPCM_IMA_RAD: c_int = 71683;
pub const AV_CODEC_ID_ADPCM_G726LE: c_int = 71684;
pub const AV_CODEC_ID_ADPCM_THP_LE: c_int = 71685;
pub const AV_CODEC_ID_ADPCM_PSX: c_int = 71686;
pub const AV_CODEC_ID_ADPCM_AICA: c_int = 71687;
pub const AV_CODEC_ID_ADPCM_IMA_DAT4: c_int = 71688;
pub const AV_CODEC_ID_ADPCM_MTAF: c_int = 71689;
pub const AV_CODEC_ID_ADPCM_AGM: c_int = 71690;
pub const AV_CODEC_ID_ADPCM_ARGO: c_int = 71691;
pub const AV_CODEC_ID_ADPCM_IMA_SSI: c_int = 71692;
pub const AV_CODEC_ID_ADPCM_ZORK: c_int = 71693;
pub const AV_CODEC_ID_ADPCM_IMA_APM: c_int = 71694;
pub const AV_CODEC_ID_ADPCM_IMA_ALP: c_int = 71695;
pub const AV_CODEC_ID_ADPCM_IMA_MTF: c_int = 71696;
pub const AV_CODEC_ID_ADPCM_IMA_CUNNING: c_int = 71697;
pub const AV_CODEC_ID_ADPCM_IMA_MOFLEX: c_int = 71698;
pub const AV_CODEC_ID_AMR_NB: c_int = 73728;
pub const AV_CODEC_ID_AMR_WB: c_int = 73729;
pub const AV_CODEC_ID_RA_144: c_int = 77824;
pub const AV_CODEC_ID_RA_288: c_int = 77825;
pub const AV_CODEC_ID_ROQ_DPCM: c_int = 81920;
pub const AV_CODEC_ID_INTERPLAY_DPCM: c_int = 81921;
pub const AV_CODEC_ID_XAN_DPCM: c_int = 81922;
pub const AV_CODEC_ID_SOL_DPCM: c_int = 81923;
pub const AV_CODEC_ID_SDX2_DPCM: c_int = 83968;
pub const AV_CODEC_ID_GREMLIN_DPCM: c_int = 83969;
pub const AV_CODEC_ID_DERF_DPCM: c_int = 83970;
pub const AV_CODEC_ID_MP2: c_int = 86016;
pub const AV_CODEC_ID_MP3: c_int = 86017;
pub const AV_CODEC_ID_AAC: c_int = 86018;
pub const AV_CODEC_ID_AC3: c_int = 86019;
pub const AV_CODEC_ID_DTS: c_int = 86020;
pub const AV_CODEC_ID_VORBIS: c_int = 86021;
pub const AV_CODEC_ID_DVAUDIO: c_int = 86022;
pub const AV_CODEC_ID_WMAV1: c_int = 86023;
pub const AV_CODEC_ID_WMAV2: c_int = 86024;
pub const AV_CODEC_ID_MACE3: c_int = 86025;
pub const AV_CODEC_ID_MACE6: c_int = 86026;
pub const AV_CODEC_ID_VMDAUDIO: c_int = 86027;
pub const AV_CODEC_ID_FLAC: c_int = 86028;
pub const AV_CODEC_ID_MP3ADU: c_int = 86029;
pub const AV_CODEC_ID_MP3ON4: c_int = 86030;
pub const AV_CODEC_ID_SHORTEN: c_int = 86031;
pub const AV_CODEC_ID_ALAC: c_int = 86032;
pub const AV_CODEC_ID_WESTWOOD_SND1: c_int = 86033;
pub const AV_CODEC_ID_GSM: c_int = 86034;
pub const AV_CODEC_ID_QDM2: c_int = 86035;
pub const AV_CODEC_ID_COOK: c_int = 86036;
pub const AV_CODEC_ID_TRUESPEECH: c_int = 86037;
pub const AV_CODEC_ID_TTA: c_int = 86038;
pub const AV_CODEC_ID_SMACKAUDIO: c_int = 86039;
pub const AV_CODEC_ID_QCELP: c_int = 86040;
pub const AV_CODEC_ID_WAVPACK: c_int = 86041;
pub const AV_CODEC_ID_DSICINAUDIO: c_int = 86042;
pub const AV_CODEC_ID_IMC: c_int = 86043;
pub const AV_CODEC_ID_MUSEPACK7: c_int = 86044;
pub const AV_CODEC_ID_MLP: c_int = 86045;
pub const AV_CODEC_ID_GSM_MS: c_int = 86046;
pub const AV_CODEC_ID_ATRAC3: c_int = 86047;
pub const AV_CODEC_ID_APE: c_int = 86048;
pub const AV_CODEC_ID_NELLYMOSER: c_int = 86049;
pub const AV_CODEC_ID_MUSEPACK8: c_int = 86050;
pub const AV_CODEC_ID_SPEEX: c_int = 86051;
pub const AV_CODEC_ID_WMAVOICE: c_int = 86052;
pub const AV_CODEC_ID_WMAPRO: c_int = 86053;
pub const AV_CODEC_ID_WMALOSSLESS: c_int = 86054;
pub const AV_CODEC_ID_ATRAC3P: c_int = 86055;
pub const AV_CODEC_ID_EAC3: c_int = 86056;
pub const AV_CODEC_ID_SIPR: c_int = 86057;
pub const AV_CODEC_ID_MP1: c_int = 86058;
pub const AV_CODEC_ID_TWINVQ: c_int = 86059;
pub const AV_CODEC_ID_TRUEHD: c_int = 86060;
pub const AV_CODEC_ID_MP4ALS: c_int = 86061;
pub const AV_CODEC_ID_ATRAC1: c_int = 86062;
pub const AV_CODEC_ID_BINKAUDIO_RDFT: c_int = 86063;
pub const AV_CODEC_ID_BINKAUDIO_DCT: c_int = 86064;
pub const AV_CODEC_ID_AAC_LATM: c_int = 86065;
pub const AV_CODEC_ID_QDMC: c_int = 86066;
pub const AV_CODEC_ID_CELT: c_int = 86067;
pub const AV_CODEC_ID_G723_1: c_int = 86068;
pub const AV_CODEC_ID_G729: c_int = 86069;
pub const AV_CODEC_ID_8SVX_EXP: c_int = 86070;
pub const AV_CODEC_ID_8SVX_FIB: c_int = 86071;
pub const AV_CODEC_ID_BMV_AUDIO: c_int = 86072;
pub const AV_CODEC_ID_RALF: c_int = 86073;
pub const AV_CODEC_ID_IAC: c_int = 86074;
pub const AV_CODEC_ID_ILBC: c_int = 86075;
pub const AV_CODEC_ID_OPUS: c_int = 86076;
pub const AV_CODEC_ID_COMFORT_NOISE: c_int = 86077;
pub const AV_CODEC_ID_TAK: c_int = 86078;
pub const AV_CODEC_ID_METASOUND: c_int = 86079;
pub const AV_CODEC_ID_PAF_AUDIO: c_int = 86080;
pub const AV_CODEC_ID_ON2AVC: c_int = 86081;
pub const AV_CODEC_ID_DSS_SP: c_int = 86082;
pub const AV_CODEC_ID_CODEC2: c_int = 86083;
pub const AV_CODEC_ID_FFWAVESYNTH: c_int = 88064;
pub const AV_CODEC_ID_SONIC: c_int = 88065;
pub const AV_CODEC_ID_SONIC_LS: c_int = 88066;
pub const AV_CODEC_ID_EVRC: c_int = 88067;
pub const AV_CODEC_ID_SMV: c_int = 88068;
pub const AV_CODEC_ID_DSD_LSBF: c_int = 88069;
pub const AV_CODEC_ID_DSD_MSBF: c_int = 88070;
pub const AV_CODEC_ID_DSD_LSBF_PLANAR: c_int = 88071;
pub const AV_CODEC_ID_DSD_MSBF_PLANAR: c_int = 88072;
pub const AV_CODEC_ID_4GV: c_int = 88073;
pub const AV_CODEC_ID_INTERPLAY_ACM: c_int = 88074;
pub const AV_CODEC_ID_XMA1: c_int = 88075;
pub const AV_CODEC_ID_XMA2: c_int = 88076;
pub const AV_CODEC_ID_DST: c_int = 88077;
pub const AV_CODEC_ID_ATRAC3AL: c_int = 88078;
pub const AV_CODEC_ID_ATRAC3PAL: c_int = 88079;
pub const AV_CODEC_ID_DOLBY_E: c_int = 88080;
pub const AV_CODEC_ID_APTX: c_int = 88081;
pub const AV_CODEC_ID_APTX_HD: c_int = 88082;
pub const AV_CODEC_ID_SBC: c_int = 88083;
pub const AV_CODEC_ID_ATRAC9: c_int = 88084;
pub const AV_CODEC_ID_HCOM: c_int = 88085;
pub const AV_CODEC_ID_ACELP_KELVIN: c_int = 88086;
pub const AV_CODEC_ID_MPEGH_3D_AUDIO: c_int = 88087;
pub const AV_CODEC_ID_SIREN: c_int = 88088;
pub const AV_CODEC_ID_HCA: c_int = 88089;
pub const AV_CODEC_ID_FASTAUDIO: c_int = 88090;
pub const AV_CODEC_ID_FIRST_SUBTITLE: c_int = 94208;
pub const AV_CODEC_ID_DVD_SUBTITLE: c_int = 94208;
pub const AV_CODEC_ID_DVB_SUBTITLE: c_int = 94209;
pub const AV_CODEC_ID_TEXT: c_int = 94210;
pub const AV_CODEC_ID_XSUB: c_int = 94211;
pub const AV_CODEC_ID_SSA: c_int = 94212;
pub const AV_CODEC_ID_MOV_TEXT: c_int = 94213;
pub const AV_CODEC_ID_HDMV_PGS_SUBTITLE: c_int = 94214;
pub const AV_CODEC_ID_DVB_TELETEXT: c_int = 94215;
pub const AV_CODEC_ID_SRT: c_int = 94216;
pub const AV_CODEC_ID_MICRODVD: c_int = 96256;
pub const AV_CODEC_ID_EIA_608: c_int = 96257;
pub const AV_CODEC_ID_JACOSUB: c_int = 96258;
pub const AV_CODEC_ID_SAMI: c_int = 96259;
pub const AV_CODEC_ID_REALTEXT: c_int = 96260;
pub const AV_CODEC_ID_STL: c_int = 96261;
pub const AV_CODEC_ID_SUBVIEWER1: c_int = 96262;
pub const AV_CODEC_ID_SUBVIEWER: c_int = 96263;
pub const AV_CODEC_ID_SUBRIP: c_int = 96264;
pub const AV_CODEC_ID_WEBVTT: c_int = 96265;
pub const AV_CODEC_ID_MPL2: c_int = 96266;
pub const AV_CODEC_ID_VPLAYER: c_int = 96267;
pub const AV_CODEC_ID_PJS: c_int = 96268;
pub const AV_CODEC_ID_ASS: c_int = 96269;
pub const AV_CODEC_ID_HDMV_TEXT_SUBTITLE: c_int = 96270;
pub const AV_CODEC_ID_TTML: c_int = 96271;
pub const AV_CODEC_ID_ARIB_CAPTION: c_int = 96272;
pub const AV_CODEC_ID_FIRST_UNKNOWN: c_int = 98304;
pub const AV_CODEC_ID_TTF: c_int = 98304;
pub const AV_CODEC_ID_SCTE_35: c_int = 98305;
pub const AV_CODEC_ID_EPG: c_int = 98306;
pub const AV_CODEC_ID_BINTEXT: c_int = 100352;
pub const AV_CODEC_ID_XBIN: c_int = 100353;
pub const AV_CODEC_ID_IDF: c_int = 100354;
pub const AV_CODEC_ID_OTF: c_int = 100355;
pub const AV_CODEC_ID_SMPTE_KLV: c_int = 100356;
pub const AV_CODEC_ID_DVD_NAV: c_int = 100357;
pub const AV_CODEC_ID_TIMED_ID3: c_int = 100358;
pub const AV_CODEC_ID_BIN_DATA: c_int = 100359;
pub const AV_CODEC_ID_PROBE: c_int = 102400;
pub const AV_CODEC_ID_MPEG2TS: c_int = 131072;
pub const AV_CODEC_ID_MPEG4SYSTEMS: c_int = 131073;
pub const AV_CODEC_ID_FFMETADATA: c_int = 135168;
pub const AV_CODEC_ID_WRAPPED_AVFRAME: c_int = 135169;
pub const enum_AVCodecID = c_uint;
pub extern fn avcodec_get_type(codec_id: enum_AVCodecID) enum_AVMediaType;
pub extern fn avcodec_get_name(id: enum_AVCodecID) [*c]const u8;
pub const AV_FIELD_UNKNOWN: c_int = 0;
pub const AV_FIELD_PROGRESSIVE: c_int = 1;
pub const AV_FIELD_TT: c_int = 2;
pub const AV_FIELD_BB: c_int = 3;
pub const AV_FIELD_TB: c_int = 4;
pub const AV_FIELD_BT: c_int = 5;
pub const enum_AVFieldOrder = c_uint;
pub const struct_AVCodecParameters = extern struct {
    codec_type: enum_AVMediaType = @import("std").mem.zeroes(enum_AVMediaType),
    codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    codec_tag: u32 = 0,
    extradata: [*c]u8 = null,
    extradata_size: c_int = 0,
    format: c_int = 0,
    bit_rate: i64 = 0,
    bits_per_coded_sample: c_int = 0,
    bits_per_raw_sample: c_int = 0,
    profile: c_int = 0,
    level: c_int = 0,
    width: c_int = 0,
    height: c_int = 0,
    sample_aspect_ratio: AVRational = @import("std").mem.zeroes(AVRational),
    field_order: enum_AVFieldOrder = @import("std").mem.zeroes(enum_AVFieldOrder),
    color_range: enum_AVColorRange = @import("std").mem.zeroes(enum_AVColorRange),
    color_primaries: enum_AVColorPrimaries = @import("std").mem.zeroes(enum_AVColorPrimaries),
    color_trc: enum_AVColorTransferCharacteristic = @import("std").mem.zeroes(enum_AVColorTransferCharacteristic),
    color_space: enum_AVColorSpace = @import("std").mem.zeroes(enum_AVColorSpace),
    chroma_location: enum_AVChromaLocation = @import("std").mem.zeroes(enum_AVChromaLocation),
    video_delay: c_int = 0,
    channel_layout: u64 = 0,
    channels: c_int = 0,
    sample_rate: c_int = 0,
    block_align: c_int = 0,
    frame_size: c_int = 0,
    initial_padding: c_int = 0,
    trailing_padding: c_int = 0,
    seek_preroll: c_int = 0,
    pub const avcodec_parameters_copy = __root.avcodec_parameters_copy;
    pub const avcodec_parameters_from_context = __root.avcodec_parameters_from_context;
    pub const av_get_audio_frame_duration2 = __root.av_get_audio_frame_duration2;
    pub const copy = __root.avcodec_parameters_copy;
    pub const context = __root.avcodec_parameters_from_context;
    pub const duration2 = __root.av_get_audio_frame_duration2;
};
pub const AVCodecParameters = struct_AVCodecParameters;
pub extern fn avcodec_parameters_alloc() [*c]AVCodecParameters;
pub extern fn avcodec_parameters_free(par: [*c][*c]AVCodecParameters) void;
pub extern fn avcodec_parameters_copy(dst: [*c]AVCodecParameters, src: [*c]const AVCodecParameters) c_int;
pub const AV_PKT_DATA_PALETTE: c_int = 0;
pub const AV_PKT_DATA_NEW_EXTRADATA: c_int = 1;
pub const AV_PKT_DATA_PARAM_CHANGE: c_int = 2;
pub const AV_PKT_DATA_H263_MB_INFO: c_int = 3;
pub const AV_PKT_DATA_REPLAYGAIN: c_int = 4;
pub const AV_PKT_DATA_DISPLAYMATRIX: c_int = 5;
pub const AV_PKT_DATA_STEREO3D: c_int = 6;
pub const AV_PKT_DATA_AUDIO_SERVICE_TYPE: c_int = 7;
pub const AV_PKT_DATA_QUALITY_STATS: c_int = 8;
pub const AV_PKT_DATA_FALLBACK_TRACK: c_int = 9;
pub const AV_PKT_DATA_CPB_PROPERTIES: c_int = 10;
pub const AV_PKT_DATA_SKIP_SAMPLES: c_int = 11;
pub const AV_PKT_DATA_JP_DUALMONO: c_int = 12;
pub const AV_PKT_DATA_STRINGS_METADATA: c_int = 13;
pub const AV_PKT_DATA_SUBTITLE_POSITION: c_int = 14;
pub const AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL: c_int = 15;
pub const AV_PKT_DATA_WEBVTT_IDENTIFIER: c_int = 16;
pub const AV_PKT_DATA_WEBVTT_SETTINGS: c_int = 17;
pub const AV_PKT_DATA_METADATA_UPDATE: c_int = 18;
pub const AV_PKT_DATA_MPEGTS_STREAM_ID: c_int = 19;
pub const AV_PKT_DATA_MASTERING_DISPLAY_METADATA: c_int = 20;
pub const AV_PKT_DATA_SPHERICAL: c_int = 21;
pub const AV_PKT_DATA_CONTENT_LIGHT_LEVEL: c_int = 22;
pub const AV_PKT_DATA_A53_CC: c_int = 23;
pub const AV_PKT_DATA_ENCRYPTION_INIT_INFO: c_int = 24;
pub const AV_PKT_DATA_ENCRYPTION_INFO: c_int = 25;
pub const AV_PKT_DATA_AFD: c_int = 26;
pub const AV_PKT_DATA_PRFT: c_int = 27;
pub const AV_PKT_DATA_ICC_PROFILE: c_int = 28;
pub const AV_PKT_DATA_DOVI_CONF: c_int = 29;
pub const AV_PKT_DATA_S12M_TIMECODE: c_int = 30;
pub const AV_PKT_DATA_NB: c_int = 31;
pub const enum_AVPacketSideDataType = c_uint;
pub const struct_AVPacketSideData = extern struct {
    data: [*c]u8 = null,
    size: c_int = 0,
    type: enum_AVPacketSideDataType = @import("std").mem.zeroes(enum_AVPacketSideDataType),
};
pub const AVPacketSideData = struct_AVPacketSideData;
pub const struct_AVPacket = extern struct {
    buf: [*c]AVBufferRef = null,
    pts: i64 = 0,
    dts: i64 = 0,
    data: [*c]u8 = null,
    size: c_int = 0,
    stream_index: c_int = 0,
    flags: c_int = 0,
    side_data: [*c]AVPacketSideData = null,
    side_data_elems: c_int = 0,
    duration: i64 = 0,
    pos: i64 = 0,
    convergence_duration: i64 = 0,
    pub const av_packet_clone = __root.av_packet_clone;
    pub const av_init_packet = __root.av_init_packet;
    pub const av_new_packet = __root.av_new_packet;
    pub const av_shrink_packet = __root.av_shrink_packet;
    pub const av_grow_packet = __root.av_grow_packet;
    pub const av_packet_from_data = __root.av_packet_from_data;
    pub const av_dup_packet = __root.av_dup_packet;
    pub const av_copy_packet = __root.av_copy_packet;
    pub const av_copy_packet_side_data = __root.av_copy_packet_side_data;
    pub const av_free_packet = __root.av_free_packet;
    pub const av_packet_new_side_data = __root.av_packet_new_side_data;
    pub const av_packet_add_side_data = __root.av_packet_add_side_data;
    pub const av_packet_shrink_side_data = __root.av_packet_shrink_side_data;
    pub const av_packet_get_side_data = __root.av_packet_get_side_data;
    pub const av_packet_merge_side_data = __root.av_packet_merge_side_data;
    pub const av_packet_split_side_data = __root.av_packet_split_side_data;
    pub const av_packet_free_side_data = __root.av_packet_free_side_data;
    pub const av_packet_ref = __root.av_packet_ref;
    pub const av_packet_unref = __root.av_packet_unref;
    pub const av_packet_move_ref = __root.av_packet_move_ref;
    pub const av_packet_copy_props = __root.av_packet_copy_props;
    pub const av_packet_make_refcounted = __root.av_packet_make_refcounted;
    pub const av_packet_make_writable = __root.av_packet_make_writable;
    pub const av_packet_rescale_ts = __root.av_packet_rescale_ts;
    pub const clone = __root.av_packet_clone;
    pub const packet = __root.av_init_packet;
    pub const ref = __root.av_packet_ref;
    pub const unref = __root.av_packet_unref;
    pub const props = __root.av_packet_copy_props;
    pub const refcounted = __root.av_packet_make_refcounted;
    pub const writable = __root.av_packet_make_writable;
    pub const ts = __root.av_packet_rescale_ts;
};
pub const AVPacket = struct_AVPacket;
pub const struct_AVPacketList = extern struct {
    pkt: AVPacket = @import("std").mem.zeroes(AVPacket),
    next: [*c]struct_AVPacketList = null,
};
pub const AVPacketList = struct_AVPacketList;
pub const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT: c_int = 1;
pub const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT: c_int = 2;
pub const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE: c_int = 4;
pub const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS: c_int = 8;
pub const enum_AVSideDataParamChangeFlags = c_uint;
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
pub extern fn av_packet_new_side_data(pkt: [*c]AVPacket, @"type": enum_AVPacketSideDataType, size: c_int) [*c]u8;
pub extern fn av_packet_add_side_data(pkt: [*c]AVPacket, @"type": enum_AVPacketSideDataType, data: [*c]u8, size: usize) c_int;
pub extern fn av_packet_shrink_side_data(pkt: [*c]AVPacket, @"type": enum_AVPacketSideDataType, size: c_int) c_int;
pub extern fn av_packet_get_side_data(pkt: [*c]const AVPacket, @"type": enum_AVPacketSideDataType, size: [*c]c_int) [*c]u8;
pub extern fn av_packet_merge_side_data(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_split_side_data(pkt: [*c]AVPacket) c_int;
pub extern fn av_packet_side_data_name(@"type": enum_AVPacketSideDataType) [*c]const u8;
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
    name: [*c]const u8 = null,
    codec_ids: [*c]const enum_AVCodecID = null,
    priv_class: [*c]const AVClass = null,
    priv_data_size: c_int = 0,
    init: ?*const fn (ctx: [*c]AVBSFContext) callconv(.c) c_int = null,
    filter: ?*const fn (ctx: [*c]AVBSFContext, pkt: [*c]AVPacket) callconv(.c) c_int = null,
    close: ?*const fn (ctx: [*c]AVBSFContext) callconv(.c) void = null,
    flush: ?*const fn (ctx: [*c]AVBSFContext) callconv(.c) void = null,
    pub const av_bsf_alloc = __root.av_bsf_alloc;
    pub const av_register_bitstream_filter = __root.av_register_bitstream_filter;
    pub const av_bitstream_filter_next = __root.av_bitstream_filter_next;
    pub const alloc = __root.av_bsf_alloc;
    pub const next = __root.av_bitstream_filter_next;
};
pub const struct_AVBSFContext = extern struct {
    av_class: [*c]const AVClass = null,
    filter: [*c]const struct_AVBitStreamFilter = null,
    internal: ?*AVBSFInternal = null,
    priv_data: ?*anyopaque = null,
    par_in: [*c]AVCodecParameters = null,
    par_out: [*c]AVCodecParameters = null,
    time_base_in: AVRational = @import("std").mem.zeroes(AVRational),
    time_base_out: AVRational = @import("std").mem.zeroes(AVRational),
    pub const av_bsf_init = __root.av_bsf_init;
    pub const av_bsf_send_packet = __root.av_bsf_send_packet;
    pub const av_bsf_receive_packet = __root.av_bsf_receive_packet;
    pub const av_bsf_flush = __root.av_bsf_flush;
    pub const init = __root.av_bsf_init;
    pub const packet = __root.av_bsf_send_packet;
    pub const flush = __root.av_bsf_flush;
};
pub const AVBitStreamFilter = struct_AVBitStreamFilter;
pub extern fn av_bsf_get_by_name(name: [*c]const u8) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_iterate(@"opaque": [*c]?*anyopaque) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_alloc(filter: [*c]const AVBitStreamFilter, ctx: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_init(ctx: [*c]AVBSFContext) c_int;
pub extern fn av_bsf_send_packet(ctx: [*c]AVBSFContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_bsf_receive_packet(ctx: [*c]AVBSFContext, pkt: [*c]AVPacket) c_int;
pub extern fn av_bsf_flush(ctx: [*c]AVBSFContext) void;
pub extern fn av_bsf_free(ctx: [*c][*c]AVBSFContext) void;
pub extern fn av_bsf_get_class() [*c]const AVClass;
pub const struct_AVBSFList = opaque {
    pub const av_bsf_list_append = __root.av_bsf_list_append;
    pub const av_bsf_list_append2 = __root.av_bsf_list_append2;
    pub const append = __root.av_bsf_list_append;
    pub const append2 = __root.av_bsf_list_append2;
};
pub const AVBSFList = struct_AVBSFList;
pub extern fn av_bsf_list_alloc() ?*AVBSFList;
pub extern fn av_bsf_list_free(lst: [*c]?*AVBSFList) void;
pub extern fn av_bsf_list_append(lst: ?*AVBSFList, bsf: [*c]AVBSFContext) c_int;
pub extern fn av_bsf_list_append2(lst: ?*AVBSFList, bsf_name: [*c]const u8, options: [*c]?*AVDictionary) c_int;
pub extern fn av_bsf_list_finalize(lst: [*c]?*AVBSFList, bsf: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_list_parse_str(str: [*c]const u8, bsf: [*c][*c]AVBSFContext) c_int;
pub extern fn av_bsf_get_null_filter(bsf: [*c][*c]AVBSFContext) c_int;
pub const struct_AVProfile = extern struct {
    profile: c_int = 0,
    name: [*c]const u8 = null,
};
pub const AVProfile = struct_AVProfile;
pub const struct_AVCodecDefault = opaque {};
pub const AVCodecDefault = struct_AVCodecDefault;
pub const struct_AVPicture = extern struct {
    data: [8][*c]u8 = @import("std").mem.zeroes([8][*c]u8),
    linesize: [8]c_int = @import("std").mem.zeroes([8]c_int),
    pub const avpicture_alloc = __root.avpicture_alloc;
    pub const avpicture_free = __root.avpicture_free;
    pub const avpicture_fill = __root.avpicture_fill;
    pub const avpicture_layout = __root.avpicture_layout;
    pub const av_picture_copy = __root.av_picture_copy;
    pub const av_picture_crop = __root.av_picture_crop;
    pub const av_picture_pad = __root.av_picture_pad;
    pub const alloc = __root.avpicture_alloc;
    pub const fill = __root.avpicture_fill;
    pub const layout = __root.avpicture_layout;
    pub const copy = __root.av_picture_copy;
    pub const crop = __root.av_picture_crop;
    pub const pad = __root.av_picture_pad;
};
pub const AVPicture = struct_AVPicture;
pub const SUBTITLE_NONE: c_int = 0;
pub const SUBTITLE_BITMAP: c_int = 1;
pub const SUBTITLE_TEXT: c_int = 2;
pub const SUBTITLE_ASS: c_int = 3;
pub const enum_AVSubtitleType = c_uint;
pub const struct_AVSubtitleRect = extern struct {
    x: c_int = 0,
    y: c_int = 0,
    w: c_int = 0,
    h: c_int = 0,
    nb_colors: c_int = 0,
    pict: AVPicture = @import("std").mem.zeroes(AVPicture),
    data: [4][*c]u8 = @import("std").mem.zeroes([4][*c]u8),
    linesize: [4]c_int = @import("std").mem.zeroes([4]c_int),
    type: enum_AVSubtitleType = @import("std").mem.zeroes(enum_AVSubtitleType),
    text: [*c]u8 = null,
    ass: [*c]u8 = null,
    flags: c_int = 0,
};
pub const AVSubtitleRect = struct_AVSubtitleRect;
pub const struct_AVSubtitle = extern struct {
    format: u16 = 0,
    start_display_time: u32 = 0,
    end_display_time: u32 = 0,
    num_rects: c_uint = 0,
    rects: [*c][*c]AVSubtitleRect = null,
    pts: i64 = 0,
    pub const avsubtitle_free = __root.avsubtitle_free;
};
pub const struct_AVCodecHWConfigInternal_4 = opaque {};
pub const struct_AVCodec = extern struct {
    name: [*c]const u8 = null,
    long_name: [*c]const u8 = null,
    type: enum_AVMediaType = @import("std").mem.zeroes(enum_AVMediaType),
    id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    capabilities: c_int = 0,
    supported_framerates: [*c]const AVRational = null,
    pix_fmts: [*c]const enum_AVPixelFormat = null,
    supported_samplerates: [*c]const c_int = null,
    sample_fmts: [*c]const enum_AVSampleFormat = null,
    channel_layouts: [*c]const u64 = null,
    max_lowres: u8 = 0,
    priv_class: [*c]const AVClass = null,
    profiles: [*c]const AVProfile = null,
    wrapper_name: [*c]const u8 = null,
    priv_data_size: c_int = 0,
    next: [*c]struct_AVCodec = null,
    update_thread_context: ?*const fn (dst: [*c]struct_AVCodecContext, src: [*c]const struct_AVCodecContext) callconv(.c) c_int = null,
    defaults: ?*const AVCodecDefault = null,
    init_static_data: ?*const fn (codec: [*c]struct_AVCodec) callconv(.c) void = null,
    init: ?*const fn ([*c]struct_AVCodecContext) callconv(.c) c_int = null,
    encode_sub: ?*const fn ([*c]struct_AVCodecContext, buf: [*c]u8, buf_size: c_int, sub: [*c]const struct_AVSubtitle) callconv(.c) c_int = null,
    encode2: ?*const fn (avctx: [*c]struct_AVCodecContext, avpkt: [*c]struct_AVPacket, frame: [*c]const struct_AVFrame, got_packet_ptr: [*c]c_int) callconv(.c) c_int = null,
    decode: ?*const fn (avctx: [*c]struct_AVCodecContext, outdata: ?*anyopaque, got_frame_ptr: [*c]c_int, avpkt: [*c]struct_AVPacket) callconv(.c) c_int = null,
    close: ?*const fn ([*c]struct_AVCodecContext) callconv(.c) c_int = null,
    receive_packet: ?*const fn (avctx: [*c]struct_AVCodecContext, avpkt: [*c]struct_AVPacket) callconv(.c) c_int = null,
    receive_frame: ?*const fn (avctx: [*c]struct_AVCodecContext, frame: [*c]struct_AVFrame) callconv(.c) c_int = null,
    flush: ?*const fn ([*c]struct_AVCodecContext) callconv(.c) void = null,
    caps_internal: c_int = 0,
    bsfs: [*c]const u8 = null,
    hw_configs: [*c]const ?*const struct_AVCodecHWConfigInternal_4 = null,
    codec_tags: [*c]const u32 = null,
    pub const av_codec_is_encoder = __root.av_codec_is_encoder;
    pub const av_codec_is_decoder = __root.av_codec_is_decoder;
    pub const avcodec_get_hw_config = __root.avcodec_get_hw_config;
    pub const av_codec_get_max_lowres = __root.av_codec_get_max_lowres;
    pub const av_codec_next = __root.av_codec_next;
    pub const avcodec_register = __root.avcodec_register;
    pub const avcodec_alloc_context3 = __root.avcodec_alloc_context3;
    pub const av_get_profile_name = __root.av_get_profile_name;
    pub const encoder = __root.av_codec_is_encoder;
    pub const decoder = __root.av_codec_is_decoder;
    pub const config = __root.avcodec_get_hw_config;
    pub const lowres = __root.av_codec_get_max_lowres;
    pub const register = __root.avcodec_register;
    pub const context3 = __root.avcodec_alloc_context3;
};
pub const struct_AVCodecInternal = opaque {};
pub const AV_AUDIO_SERVICE_TYPE_MAIN: c_int = 0;
pub const AV_AUDIO_SERVICE_TYPE_EFFECTS: c_int = 1;
pub const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED: c_int = 2;
pub const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED: c_int = 3;
pub const AV_AUDIO_SERVICE_TYPE_DIALOGUE: c_int = 4;
pub const AV_AUDIO_SERVICE_TYPE_COMMENTARY: c_int = 5;
pub const AV_AUDIO_SERVICE_TYPE_EMERGENCY: c_int = 6;
pub const AV_AUDIO_SERVICE_TYPE_VOICE_OVER: c_int = 7;
pub const AV_AUDIO_SERVICE_TYPE_KARAOKE: c_int = 8;
pub const AV_AUDIO_SERVICE_TYPE_NB: c_int = 9;
pub const enum_AVAudioServiceType = c_uint;
pub const struct_RcOverride = extern struct {
    start_frame: c_int = 0,
    end_frame: c_int = 0,
    qscale: c_int = 0,
    quality_factor: f32 = 0,
};
pub const RcOverride = struct_RcOverride;
pub const AVCodecContext = struct_AVCodecContext;
pub const struct_MpegEncContext = opaque {};
pub const struct_AVHWAccel = extern struct {
    name: [*c]const u8 = null,
    type: enum_AVMediaType = @import("std").mem.zeroes(enum_AVMediaType),
    id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    pix_fmt: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    capabilities: c_int = 0,
    alloc_frame: ?*const fn (avctx: [*c]AVCodecContext, frame: [*c]AVFrame) callconv(.c) c_int = null,
    start_frame: ?*const fn (avctx: [*c]AVCodecContext, buf: [*c]const u8, buf_size: u32) callconv(.c) c_int = null,
    decode_params: ?*const fn (avctx: [*c]AVCodecContext, @"type": c_int, buf: [*c]const u8, buf_size: u32) callconv(.c) c_int = null,
    decode_slice: ?*const fn (avctx: [*c]AVCodecContext, buf: [*c]const u8, buf_size: u32) callconv(.c) c_int = null,
    end_frame: ?*const fn (avctx: [*c]AVCodecContext) callconv(.c) c_int = null,
    frame_priv_data_size: c_int = 0,
    decode_mb: ?*const fn (s: ?*struct_MpegEncContext) callconv(.c) void = null,
    init: ?*const fn (avctx: [*c]AVCodecContext) callconv(.c) c_int = null,
    uninit: ?*const fn (avctx: [*c]AVCodecContext) callconv(.c) c_int = null,
    priv_data_size: c_int = 0,
    caps_internal: c_int = 0,
    frame_params: ?*const fn (avctx: [*c]AVCodecContext, hw_frames_ctx: [*c]AVBufferRef) callconv(.c) c_int = null,
    pub const av_register_hwaccel = __root.av_register_hwaccel;
    pub const av_hwaccel_next = __root.av_hwaccel_next;
    pub const hwaccel = __root.av_register_hwaccel;
    pub const next = __root.av_hwaccel_next;
};
pub const AVDISCARD_NONE: c_int = -16;
pub const AVDISCARD_DEFAULT: c_int = 0;
pub const AVDISCARD_NONREF: c_int = 8;
pub const AVDISCARD_BIDIR: c_int = 16;
pub const AVDISCARD_NONINTRA: c_int = 24;
pub const AVDISCARD_NONKEY: c_int = 32;
pub const AVDISCARD_ALL: c_int = 48;
pub const enum_AVDiscard = c_int;
pub const struct_AVCodecDescriptor = extern struct {
    id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    type: enum_AVMediaType = @import("std").mem.zeroes(enum_AVMediaType),
    name: [*c]const u8 = null,
    long_name: [*c]const u8 = null,
    props: c_int = 0,
    mime_types: [*c]const [*c]const u8 = null,
    profiles: [*c]const struct_AVProfile = null,
    pub const avcodec_descriptor_next = __root.avcodec_descriptor_next;
    pub const next = __root.avcodec_descriptor_next;
};
pub const AVCodecDescriptor = struct_AVCodecDescriptor;
pub const struct_AVCodecContext = extern struct {
    av_class: [*c]const AVClass = null,
    log_level_offset: c_int = 0,
    codec_type: enum_AVMediaType = @import("std").mem.zeroes(enum_AVMediaType),
    codec: [*c]const struct_AVCodec = null,
    codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    codec_tag: c_uint = 0,
    priv_data: ?*anyopaque = null,
    internal: ?*struct_AVCodecInternal = null,
    @"opaque": ?*anyopaque = null,
    bit_rate: i64 = 0,
    bit_rate_tolerance: c_int = 0,
    global_quality: c_int = 0,
    compression_level: c_int = 0,
    flags: c_int = 0,
    flags2: c_int = 0,
    extradata: [*c]u8 = null,
    extradata_size: c_int = 0,
    time_base: AVRational = @import("std").mem.zeroes(AVRational),
    ticks_per_frame: c_int = 0,
    delay: c_int = 0,
    width: c_int = 0,
    height: c_int = 0,
    coded_width: c_int = 0,
    coded_height: c_int = 0,
    gop_size: c_int = 0,
    pix_fmt: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    draw_horiz_band: ?*const fn (s: [*c]struct_AVCodecContext, src: [*c]const AVFrame, offset: [*c]c_int, y: c_int, @"type": c_int, height: c_int) callconv(.c) void = null,
    get_format: ?*const fn (s: [*c]struct_AVCodecContext, fmt: [*c]const enum_AVPixelFormat) callconv(.c) enum_AVPixelFormat = null,
    max_b_frames: c_int = 0,
    b_quant_factor: f32 = 0,
    b_frame_strategy: c_int = 0,
    b_quant_offset: f32 = 0,
    has_b_frames: c_int = 0,
    mpeg_quant: c_int = 0,
    i_quant_factor: f32 = 0,
    i_quant_offset: f32 = 0,
    lumi_masking: f32 = 0,
    temporal_cplx_masking: f32 = 0,
    spatial_cplx_masking: f32 = 0,
    p_masking: f32 = 0,
    dark_masking: f32 = 0,
    slice_count: c_int = 0,
    prediction_method: c_int = 0,
    slice_offset: [*c]c_int = null,
    sample_aspect_ratio: AVRational = @import("std").mem.zeroes(AVRational),
    me_cmp: c_int = 0,
    me_sub_cmp: c_int = 0,
    mb_cmp: c_int = 0,
    ildct_cmp: c_int = 0,
    dia_size: c_int = 0,
    last_predictor_count: c_int = 0,
    pre_me: c_int = 0,
    me_pre_cmp: c_int = 0,
    pre_dia_size: c_int = 0,
    me_subpel_quality: c_int = 0,
    me_range: c_int = 0,
    slice_flags: c_int = 0,
    mb_decision: c_int = 0,
    intra_matrix: [*c]u16 = null,
    inter_matrix: [*c]u16 = null,
    scenechange_threshold: c_int = 0,
    noise_reduction: c_int = 0,
    intra_dc_precision: c_int = 0,
    skip_top: c_int = 0,
    skip_bottom: c_int = 0,
    mb_lmin: c_int = 0,
    mb_lmax: c_int = 0,
    me_penalty_compensation: c_int = 0,
    bidir_refine: c_int = 0,
    brd_scale: c_int = 0,
    keyint_min: c_int = 0,
    refs: c_int = 0,
    chromaoffset: c_int = 0,
    mv0_threshold: c_int = 0,
    b_sensitivity: c_int = 0,
    color_primaries: enum_AVColorPrimaries = @import("std").mem.zeroes(enum_AVColorPrimaries),
    color_trc: enum_AVColorTransferCharacteristic = @import("std").mem.zeroes(enum_AVColorTransferCharacteristic),
    colorspace: enum_AVColorSpace = @import("std").mem.zeroes(enum_AVColorSpace),
    color_range: enum_AVColorRange = @import("std").mem.zeroes(enum_AVColorRange),
    chroma_sample_location: enum_AVChromaLocation = @import("std").mem.zeroes(enum_AVChromaLocation),
    slices: c_int = 0,
    field_order: enum_AVFieldOrder = @import("std").mem.zeroes(enum_AVFieldOrder),
    sample_rate: c_int = 0,
    channels: c_int = 0,
    sample_fmt: enum_AVSampleFormat = @import("std").mem.zeroes(enum_AVSampleFormat),
    frame_size: c_int = 0,
    frame_number: c_int = 0,
    block_align: c_int = 0,
    cutoff: c_int = 0,
    channel_layout: u64 = 0,
    request_channel_layout: u64 = 0,
    audio_service_type: enum_AVAudioServiceType = @import("std").mem.zeroes(enum_AVAudioServiceType),
    request_sample_fmt: enum_AVSampleFormat = @import("std").mem.zeroes(enum_AVSampleFormat),
    get_buffer2: ?*const fn (s: [*c]struct_AVCodecContext, frame: [*c]AVFrame, flags: c_int) callconv(.c) c_int = null,
    refcounted_frames: c_int = 0,
    qcompress: f32 = 0,
    qblur: f32 = 0,
    qmin: c_int = 0,
    qmax: c_int = 0,
    max_qdiff: c_int = 0,
    rc_buffer_size: c_int = 0,
    rc_override_count: c_int = 0,
    rc_override: [*c]RcOverride = null,
    rc_max_rate: i64 = 0,
    rc_min_rate: i64 = 0,
    rc_max_available_vbv_use: f32 = 0,
    rc_min_vbv_overflow_use: f32 = 0,
    rc_initial_buffer_occupancy: c_int = 0,
    coder_type: c_int = 0,
    context_model: c_int = 0,
    frame_skip_threshold: c_int = 0,
    frame_skip_factor: c_int = 0,
    frame_skip_exp: c_int = 0,
    frame_skip_cmp: c_int = 0,
    trellis: c_int = 0,
    min_prediction_order: c_int = 0,
    max_prediction_order: c_int = 0,
    timecode_frame_start: i64 = 0,
    rtp_callback: ?*const fn (avctx: [*c]struct_AVCodecContext, data: ?*anyopaque, size: c_int, mb_nb: c_int) callconv(.c) void = null,
    rtp_payload_size: c_int = 0,
    mv_bits: c_int = 0,
    header_bits: c_int = 0,
    i_tex_bits: c_int = 0,
    p_tex_bits: c_int = 0,
    i_count: c_int = 0,
    p_count: c_int = 0,
    skip_count: c_int = 0,
    misc_bits: c_int = 0,
    frame_bits: c_int = 0,
    stats_out: [*c]u8 = null,
    stats_in: [*c]u8 = null,
    workaround_bugs: c_int = 0,
    strict_std_compliance: c_int = 0,
    error_concealment: c_int = 0,
    debug: c_int = 0,
    err_recognition: c_int = 0,
    reordered_opaque: i64 = 0,
    hwaccel: [*c]const struct_AVHWAccel = null,
    hwaccel_context: ?*anyopaque = null,
    @"error": [8]u64 = @import("std").mem.zeroes([8]u64),
    dct_algo: c_int = 0,
    idct_algo: c_int = 0,
    bits_per_coded_sample: c_int = 0,
    bits_per_raw_sample: c_int = 0,
    lowres: c_int = 0,
    coded_frame: [*c]AVFrame = null,
    thread_count: c_int = 0,
    thread_type: c_int = 0,
    active_thread_type: c_int = 0,
    thread_safe_callbacks: c_int = 0,
    execute: ?*const fn (c: [*c]struct_AVCodecContext, func: ?*const fn (c2: [*c]struct_AVCodecContext, arg: ?*anyopaque) callconv(.c) c_int, arg2: ?*anyopaque, ret: [*c]c_int, count: c_int, size: c_int) callconv(.c) c_int = null,
    execute2: ?*const fn (c: [*c]struct_AVCodecContext, func: ?*const fn (c2: [*c]struct_AVCodecContext, arg: ?*anyopaque, jobnr: c_int, threadnr: c_int) callconv(.c) c_int, arg2: ?*anyopaque, ret: [*c]c_int, count: c_int) callconv(.c) c_int = null,
    nsse_weight: c_int = 0,
    profile: c_int = 0,
    level: c_int = 0,
    skip_loop_filter: enum_AVDiscard = @import("std").mem.zeroes(enum_AVDiscard),
    skip_idct: enum_AVDiscard = @import("std").mem.zeroes(enum_AVDiscard),
    skip_frame: enum_AVDiscard = @import("std").mem.zeroes(enum_AVDiscard),
    subtitle_header: [*c]u8 = null,
    subtitle_header_size: c_int = 0,
    vbv_delay: u64 = 0,
    side_data_only_packets: c_int = 0,
    initial_padding: c_int = 0,
    framerate: AVRational = @import("std").mem.zeroes(AVRational),
    sw_pix_fmt: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    pkt_timebase: AVRational = @import("std").mem.zeroes(AVRational),
    codec_descriptor: [*c]const AVCodecDescriptor = null,
    pts_correction_num_faulty_pts: i64 = 0,
    pts_correction_num_faulty_dts: i64 = 0,
    pts_correction_last_pts: i64 = 0,
    pts_correction_last_dts: i64 = 0,
    sub_charenc: [*c]u8 = null,
    sub_charenc_mode: c_int = 0,
    skip_alpha: c_int = 0,
    seek_preroll: c_int = 0,
    debug_mv: c_int = 0,
    chroma_intra_matrix: [*c]u16 = null,
    dump_separator: [*c]u8 = null,
    codec_whitelist: [*c]u8 = null,
    properties: c_uint = 0,
    coded_side_data: [*c]AVPacketSideData = null,
    nb_coded_side_data: c_int = 0,
    hw_frames_ctx: [*c]AVBufferRef = null,
    sub_text_format: c_int = 0,
    trailing_padding: c_int = 0,
    max_pixels: i64 = 0,
    hw_device_ctx: [*c]AVBufferRef = null,
    hwaccel_flags: c_int = 0,
    apply_cropping: c_int = 0,
    extra_hw_frames: c_int = 0,
    discard_damaged_percentage: c_int = 0,
    max_samples: i64 = 0,
    export_side_data: c_int = 0,
    get_encode_buffer: ?*const fn (s: [*c]struct_AVCodecContext, pkt: [*c]AVPacket, flags: c_int) callconv(.c) c_int = null,
    pub const av_codec_get_pkt_timebase = __root.av_codec_get_pkt_timebase;
    pub const av_codec_set_pkt_timebase = __root.av_codec_set_pkt_timebase;
    pub const av_codec_get_codec_descriptor = __root.av_codec_get_codec_descriptor;
    pub const av_codec_set_codec_descriptor = __root.av_codec_set_codec_descriptor;
    pub const av_codec_get_codec_properties = __root.av_codec_get_codec_properties;
    pub const av_codec_get_lowres = __root.av_codec_get_lowres;
    pub const av_codec_set_lowres = __root.av_codec_set_lowres;
    pub const av_codec_get_seek_preroll = __root.av_codec_get_seek_preroll;
    pub const av_codec_set_seek_preroll = __root.av_codec_set_seek_preroll;
    pub const av_codec_get_chroma_intra_matrix = __root.av_codec_get_chroma_intra_matrix;
    pub const av_codec_set_chroma_intra_matrix = __root.av_codec_set_chroma_intra_matrix;
    pub const avcodec_get_context_defaults3 = __root.avcodec_get_context_defaults3;
    pub const avcodec_copy_context = __root.avcodec_copy_context;
    pub const avcodec_parameters_to_context = __root.avcodec_parameters_to_context;
    pub const avcodec_open2 = __root.avcodec_open2;
    pub const avcodec_close = __root.avcodec_close;
    pub const avcodec_default_get_buffer2 = __root.avcodec_default_get_buffer2;
    pub const avcodec_default_get_encode_buffer = __root.avcodec_default_get_encode_buffer;
    pub const avcodec_align_dimensions = __root.avcodec_align_dimensions;
    pub const avcodec_align_dimensions2 = __root.avcodec_align_dimensions2;
    pub const avcodec_decode_audio4 = __root.avcodec_decode_audio4;
    pub const avcodec_decode_video2 = __root.avcodec_decode_video2;
    pub const avcodec_decode_subtitle2 = __root.avcodec_decode_subtitle2;
    pub const avcodec_send_packet = __root.avcodec_send_packet;
    pub const avcodec_receive_frame = __root.avcodec_receive_frame;
    pub const avcodec_send_frame = __root.avcodec_send_frame;
    pub const avcodec_receive_packet = __root.avcodec_receive_packet;
    pub const avcodec_get_hw_frames_parameters = __root.avcodec_get_hw_frames_parameters;
    pub const avcodec_encode_audio2 = __root.avcodec_encode_audio2;
    pub const avcodec_encode_video2 = __root.avcodec_encode_video2;
    pub const avcodec_encode_subtitle = __root.avcodec_encode_subtitle;
    pub const avcodec_default_get_format = __root.avcodec_default_get_format;
    pub const avcodec_default_execute = __root.avcodec_default_execute;
    pub const avcodec_default_execute2 = __root.avcodec_default_execute2;
    pub const avcodec_flush_buffers = __root.avcodec_flush_buffers;
    pub const av_get_audio_frame_duration = __root.av_get_audio_frame_duration;
    pub const avcodec_is_open = __root.avcodec_is_open;
    pub const av_apply_bitstream_filters = __root.av_apply_bitstream_filters;
    pub const timebase = __root.av_codec_get_pkt_timebase;
    pub const descriptor = __root.av_codec_get_codec_descriptor;
    pub const preroll = __root.av_codec_get_seek_preroll;
    pub const matrix = __root.av_codec_get_chroma_intra_matrix;
    pub const defaults3 = __root.avcodec_get_context_defaults3;
    pub const context = __root.avcodec_copy_context;
    pub const open2 = __root.avcodec_open2;
    pub const close = __root.avcodec_close;
    pub const buffer2 = __root.avcodec_default_get_buffer2;
    pub const buffer = __root.avcodec_default_get_encode_buffer;
    pub const dimensions = __root.avcodec_align_dimensions;
    pub const dimensions2 = __root.avcodec_align_dimensions2;
    pub const audio4 = __root.avcodec_decode_audio4;
    pub const video2 = __root.avcodec_decode_video2;
    pub const subtitle2 = __root.avcodec_decode_subtitle2;
    pub const packet = __root.avcodec_send_packet;
    pub const frame = __root.avcodec_receive_frame;
    pub const parameters = __root.avcodec_get_hw_frames_parameters;
    pub const audio2 = __root.avcodec_encode_audio2;
    pub const subtitle = __root.avcodec_encode_subtitle;
    pub const format = __root.avcodec_default_get_format;
    pub const buffers = __root.avcodec_flush_buffers;
    pub const duration = __root.av_get_audio_frame_duration;
    pub const open = __root.avcodec_is_open;
    pub const filters = __root.av_apply_bitstream_filters;
};
pub const AVCodec = struct_AVCodec;
pub extern fn av_codec_iterate(@"opaque": [*c]?*anyopaque) [*c]const AVCodec;
pub extern fn avcodec_find_decoder(id: enum_AVCodecID) [*c]AVCodec;
pub extern fn avcodec_find_decoder_by_name(name: [*c]const u8) [*c]AVCodec;
pub extern fn avcodec_find_encoder(id: enum_AVCodecID) [*c]AVCodec;
pub extern fn avcodec_find_encoder_by_name(name: [*c]const u8) [*c]AVCodec;
pub extern fn av_codec_is_encoder(codec: [*c]const AVCodec) c_int;
pub extern fn av_codec_is_decoder(codec: [*c]const AVCodec) c_int;
pub const AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX: c_int = 1;
pub const AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX: c_int = 2;
pub const AV_CODEC_HW_CONFIG_METHOD_INTERNAL: c_int = 4;
pub const AV_CODEC_HW_CONFIG_METHOD_AD_HOC: c_int = 8;
const enum_unnamed_5 = c_uint;
pub const struct_AVCodecHWConfig = extern struct {
    pix_fmt: enum_AVPixelFormat = @import("std").mem.zeroes(enum_AVPixelFormat),
    methods: c_int = 0,
    device_type: enum_AVHWDeviceType = @import("std").mem.zeroes(enum_AVHWDeviceType),
};
pub const AVCodecHWConfig = struct_AVCodecHWConfig;
pub extern fn avcodec_get_hw_config(codec: [*c]const AVCodec, index: c_int) [*c]const AVCodecHWConfig;
pub extern fn avcodec_descriptor_get(id: enum_AVCodecID) [*c]const AVCodecDescriptor;
pub extern fn avcodec_descriptor_next(prev: [*c]const AVCodecDescriptor) [*c]const AVCodecDescriptor;
pub extern fn avcodec_descriptor_get_by_name(name: [*c]const u8) [*c]const AVCodecDescriptor;
pub const struct_AVPanScan = extern struct {
    id: c_int = 0,
    width: c_int = 0,
    height: c_int = 0,
    position: [3][2]i16 = @import("std").mem.zeroes([3][2]i16),
};
pub const AVPanScan = struct_AVPanScan;
pub const struct_AVCPBProperties = extern struct {
    max_bitrate: c_int = 0,
    min_bitrate: c_int = 0,
    avg_bitrate: c_int = 0,
    buffer_size: c_int = 0,
    vbv_delay: u64 = 0,
};
pub const AVCPBProperties = struct_AVCPBProperties;
pub const struct_AVProducerReferenceTime = extern struct {
    wallclock: i64 = 0,
    flags: c_int = 0,
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
pub extern fn avcodec_default_get_encode_buffer(s: [*c]AVCodecContext, pkt: [*c]AVPacket, flags: c_int) c_int;
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
pub const AV_PICTURE_STRUCTURE_UNKNOWN: c_int = 0;
pub const AV_PICTURE_STRUCTURE_TOP_FIELD: c_int = 1;
pub const AV_PICTURE_STRUCTURE_BOTTOM_FIELD: c_int = 2;
pub const AV_PICTURE_STRUCTURE_FRAME: c_int = 3;
pub const enum_AVPictureStructure = c_uint;
pub const AVCodecParserContext = struct_AVCodecParserContext;
pub const struct_AVCodecParser = extern struct {
    codec_ids: [5]c_int = @import("std").mem.zeroes([5]c_int),
    priv_data_size: c_int = 0,
    parser_init: ?*const fn (s: [*c]AVCodecParserContext) callconv(.c) c_int = null,
    parser_parse: ?*const fn (s: [*c]AVCodecParserContext, avctx: [*c]AVCodecContext, poutbuf: [*c][*c]const u8, poutbuf_size: [*c]c_int, buf: [*c]const u8, buf_size: c_int) callconv(.c) c_int = null,
    parser_close: ?*const fn (s: [*c]AVCodecParserContext) callconv(.c) void = null,
    split: ?*const fn (avctx: [*c]AVCodecContext, buf: [*c]const u8, buf_size: c_int) callconv(.c) c_int = null,
    next: [*c]struct_AVCodecParser = null,
    pub const av_parser_next = __root.av_parser_next;
    pub const av_register_codec_parser = __root.av_register_codec_parser;
    pub const parser = __root.av_register_codec_parser;
};
pub const struct_AVCodecParserContext = extern struct {
    priv_data: ?*anyopaque = null,
    parser: [*c]struct_AVCodecParser = null,
    frame_offset: i64 = 0,
    cur_offset: i64 = 0,
    next_frame_offset: i64 = 0,
    pict_type: c_int = 0,
    repeat_pict: c_int = 0,
    pts: i64 = 0,
    dts: i64 = 0,
    last_pts: i64 = 0,
    last_dts: i64 = 0,
    fetch_timestamp: c_int = 0,
    cur_frame_start_index: c_int = 0,
    cur_frame_offset: [4]i64 = @import("std").mem.zeroes([4]i64),
    cur_frame_pts: [4]i64 = @import("std").mem.zeroes([4]i64),
    cur_frame_dts: [4]i64 = @import("std").mem.zeroes([4]i64),
    flags: c_int = 0,
    offset: i64 = 0,
    cur_frame_end: [4]i64 = @import("std").mem.zeroes([4]i64),
    key_frame: c_int = 0,
    convergence_duration: i64 = 0,
    dts_sync_point: c_int = 0,
    dts_ref_dts_delta: c_int = 0,
    pts_dts_delta: c_int = 0,
    cur_frame_pos: [4]i64 = @import("std").mem.zeroes([4]i64),
    pos: i64 = 0,
    last_pos: i64 = 0,
    duration: c_int = 0,
    field_order: enum_AVFieldOrder = @import("std").mem.zeroes(enum_AVFieldOrder),
    picture_structure: enum_AVPictureStructure = @import("std").mem.zeroes(enum_AVPictureStructure),
    output_picture_number: c_int = 0,
    width: c_int = 0,
    height: c_int = 0,
    coded_width: c_int = 0,
    coded_height: c_int = 0,
    format: c_int = 0,
    pub const av_parser_parse2 = __root.av_parser_parse2;
    pub const av_parser_change = __root.av_parser_change;
    pub const av_parser_close = __root.av_parser_close;
    pub const parse2 = __root.av_parser_parse2;
    pub const change = __root.av_parser_change;
    pub const close = __root.av_parser_close;
};
pub const AVCodecParser = struct_AVCodecParser;
pub extern fn av_parser_iterate(@"opaque": [*c]?*anyopaque) [*c]const AVCodecParser;
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
pub extern fn avcodec_default_execute(c: [*c]AVCodecContext, func: ?*const fn (c2: [*c]AVCodecContext, arg2: ?*anyopaque) callconv(.c) c_int, arg: ?*anyopaque, ret: [*c]c_int, count: c_int, size: c_int) c_int;
pub extern fn avcodec_default_execute2(c: [*c]AVCodecContext, func: ?*const fn (c2: [*c]AVCodecContext, arg2: ?*anyopaque, c_int, c_int) callconv(.c) c_int, arg: ?*anyopaque, ret: [*c]c_int, count: c_int) c_int;
pub extern fn avcodec_fill_audio_frame(frame: [*c]AVFrame, nb_channels: c_int, sample_fmt: enum_AVSampleFormat, buf: [*c]const u8, buf_size: c_int, @"align": c_int) c_int;
pub extern fn avcodec_flush_buffers(avctx: [*c]AVCodecContext) void;
pub extern fn av_get_bits_per_sample(codec_id: enum_AVCodecID) c_int;
pub extern fn av_get_pcm_codec(fmt: enum_AVSampleFormat, be: c_int) enum_AVCodecID;
pub extern fn av_get_exact_bits_per_sample(codec_id: enum_AVCodecID) c_int;
pub extern fn av_get_audio_frame_duration(avctx: [*c]AVCodecContext, frame_bytes: c_int) c_int;
pub extern fn av_get_audio_frame_duration2(par: [*c]AVCodecParameters, frame_bytes: c_int) c_int;
pub const struct_AVBitStreamFilterContext = extern struct {
    priv_data: ?*anyopaque = null,
    filter: [*c]const struct_AVBitStreamFilter = null,
    parser: [*c]AVCodecParserContext = null,
    next: [*c]struct_AVBitStreamFilterContext = null,
    args: [*c]u8 = null,
    pub const av_bitstream_filter_filter = __root.av_bitstream_filter_filter;
    pub const av_bitstream_filter_close = __root.av_bitstream_filter_close;
    pub const close = __root.av_bitstream_filter_close;
};
pub const AVBitStreamFilterContext = struct_AVBitStreamFilterContext;
pub extern fn av_register_bitstream_filter(bsf: [*c]AVBitStreamFilter) void;
pub extern fn av_bitstream_filter_init(name: [*c]const u8) [*c]AVBitStreamFilterContext;
pub extern fn av_bitstream_filter_filter(bsfc: [*c]AVBitStreamFilterContext, avctx: [*c]AVCodecContext, args: [*c]const u8, poutbuf: [*c][*c]u8, poutbuf_size: [*c]c_int, buf: [*c]const u8, buf_size: c_int, keyframe: c_int) c_int;
pub extern fn av_bitstream_filter_close(bsf: [*c]AVBitStreamFilterContext) void;
pub extern fn av_bitstream_filter_next(f: [*c]const AVBitStreamFilter) [*c]const AVBitStreamFilter;
pub extern fn av_bsf_next(@"opaque": [*c]?*anyopaque) [*c]const AVBitStreamFilter;
pub extern fn av_fast_padded_malloc(ptr: ?*anyopaque, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_fast_padded_mallocz(ptr: ?*anyopaque, size: [*c]c_uint, min_size: usize) void;
pub extern fn av_xiphlacing(s: [*c]u8, v: c_uint) c_uint;
pub extern fn av_register_hwaccel(hwaccel: [*c]AVHWAccel) void;
pub extern fn av_hwaccel_next(hwaccel: [*c]const AVHWAccel) [*c]AVHWAccel;
pub const AV_LOCK_CREATE: c_int = 0;
pub const AV_LOCK_OBTAIN: c_int = 1;
pub const AV_LOCK_RELEASE: c_int = 2;
pub const AV_LOCK_DESTROY: c_int = 3;
pub const enum_AVLockOp = c_uint;
pub extern fn av_lockmgr_register(cb: ?*const fn (mutex: [*c]?*anyopaque, op: enum_AVLockOp) callconv(.c) c_int) c_int;
pub extern fn avcodec_is_open(s: [*c]AVCodecContext) c_int;
pub extern fn av_cpb_properties_alloc(size: [*c]usize) [*c]AVCPBProperties;
pub const struct_AVIOInterruptCB = extern struct {
    callback: ?*const fn (?*anyopaque) callconv(.c) c_int = null,
    @"opaque": ?*anyopaque = null,
};
pub const AVIOInterruptCB = struct_AVIOInterruptCB;
pub const AVIO_ENTRY_UNKNOWN: c_int = 0;
pub const AVIO_ENTRY_BLOCK_DEVICE: c_int = 1;
pub const AVIO_ENTRY_CHARACTER_DEVICE: c_int = 2;
pub const AVIO_ENTRY_DIRECTORY: c_int = 3;
pub const AVIO_ENTRY_NAMED_PIPE: c_int = 4;
pub const AVIO_ENTRY_SYMBOLIC_LINK: c_int = 5;
pub const AVIO_ENTRY_SOCKET: c_int = 6;
pub const AVIO_ENTRY_FILE: c_int = 7;
pub const AVIO_ENTRY_SERVER: c_int = 8;
pub const AVIO_ENTRY_SHARE: c_int = 9;
pub const AVIO_ENTRY_WORKGROUP: c_int = 10;
pub const enum_AVIODirEntryType = c_uint;
pub const struct_AVIODirEntry = extern struct {
    name: [*c]u8 = null,
    type: c_int = 0,
    utf8: c_int = 0,
    size: i64 = 0,
    modification_timestamp: i64 = 0,
    access_timestamp: i64 = 0,
    status_change_timestamp: i64 = 0,
    user_id: i64 = 0,
    group_id: i64 = 0,
    filemode: i64 = 0,
};
pub const AVIODirEntry = struct_AVIODirEntry;
pub const struct_URLContext_6 = opaque {};
pub const struct_AVIODirContext = extern struct {
    url_context: ?*struct_URLContext_6 = null,
    pub const avio_read_dir = __root.avio_read_dir;
    pub const dir = __root.avio_read_dir;
};
pub const AVIODirContext = struct_AVIODirContext;
pub const AVIO_DATA_MARKER_HEADER: c_int = 0;
pub const AVIO_DATA_MARKER_SYNC_POINT: c_int = 1;
pub const AVIO_DATA_MARKER_BOUNDARY_POINT: c_int = 2;
pub const AVIO_DATA_MARKER_UNKNOWN: c_int = 3;
pub const AVIO_DATA_MARKER_TRAILER: c_int = 4;
pub const AVIO_DATA_MARKER_FLUSH_POINT: c_int = 5;
pub const enum_AVIODataMarkerType = c_uint;
pub const struct_AVIOContext = extern struct {
    av_class: [*c]const AVClass = null,
    buffer: [*c]u8 = null,
    buffer_size: c_int = 0,
    buf_ptr: [*c]u8 = null,
    buf_end: [*c]u8 = null,
    @"opaque": ?*anyopaque = null,
    read_packet: ?*const fn (@"opaque": ?*anyopaque, buf: [*c]u8, buf_size: c_int) callconv(.c) c_int = null,
    write_packet: ?*const fn (@"opaque": ?*anyopaque, buf: [*c]u8, buf_size: c_int) callconv(.c) c_int = null,
    seek: ?*const fn (@"opaque": ?*anyopaque, offset: i64, whence: c_int) callconv(.c) i64 = null,
    pos: i64 = 0,
    eof_reached: c_int = 0,
    write_flag: c_int = 0,
    max_packet_size: c_int = 0,
    checksum: c_ulong = 0,
    checksum_ptr: [*c]u8 = null,
    update_checksum: ?*const fn (checksum: c_ulong, buf: [*c]const u8, size: c_uint) callconv(.c) c_ulong = null,
    @"error": c_int = 0,
    read_pause: ?*const fn (@"opaque": ?*anyopaque, pause: c_int) callconv(.c) c_int = null,
    read_seek: ?*const fn (@"opaque": ?*anyopaque, stream_index: c_int, timestamp: i64, flags: c_int) callconv(.c) i64 = null,
    seekable: c_int = 0,
    maxsize: i64 = 0,
    direct: c_int = 0,
    bytes_read: i64 = 0,
    seek_count: c_int = 0,
    writeout_count: c_int = 0,
    orig_buffer_size: c_int = 0,
    short_seek_threshold: c_int = 0,
    protocol_whitelist: [*c]const u8 = null,
    protocol_blacklist: [*c]const u8 = null,
    write_data_type: ?*const fn (@"opaque": ?*anyopaque, buf: [*c]u8, buf_size: c_int, @"type": enum_AVIODataMarkerType, time: i64) callconv(.c) c_int = null,
    ignore_boundary_point: c_int = 0,
    current_type: enum_AVIODataMarkerType = @import("std").mem.zeroes(enum_AVIODataMarkerType),
    last_time: i64 = 0,
    short_seek_get: ?*const fn (@"opaque": ?*anyopaque) callconv(.c) c_int = null,
    written: i64 = 0,
    buf_ptr_max: [*c]u8 = null,
    min_packet_size: c_int = 0,
    pub const avio_w8 = __root.avio_w8;
    pub const avio_write = __root.avio_write;
    pub const avio_wl64 = __root.avio_wl64;
    pub const avio_wb64 = __root.avio_wb64;
    pub const avio_wl32 = __root.avio_wl32;
    pub const avio_wb32 = __root.avio_wb32;
    pub const avio_wl24 = __root.avio_wl24;
    pub const avio_wb24 = __root.avio_wb24;
    pub const avio_wl16 = __root.avio_wl16;
    pub const avio_wb16 = __root.avio_wb16;
    pub const avio_put_str = __root.avio_put_str;
    pub const avio_put_str16le = __root.avio_put_str16le;
    pub const avio_put_str16be = __root.avio_put_str16be;
    pub const avio_write_marker = __root.avio_write_marker;
    pub const avio_seek = __root.avio_seek;
    pub const avio_skip = __root.avio_skip;
    pub const avio_tell = __root.avio_tell;
    pub const avio_size = __root.avio_size;
    pub const avio_feof = __root.avio_feof;
    pub const avio_printf = __root.avio_printf;
    pub const avio_print_string_array = __root.avio_print_string_array;
    pub const avio_flush = __root.avio_flush;
    pub const avio_read = __root.avio_read;
    pub const avio_read_partial = __root.avio_read_partial;
    pub const avio_r8 = __root.avio_r8;
    pub const avio_rl16 = __root.avio_rl16;
    pub const avio_rl24 = __root.avio_rl24;
    pub const avio_rl32 = __root.avio_rl32;
    pub const avio_rl64 = __root.avio_rl64;
    pub const avio_rb16 = __root.avio_rb16;
    pub const avio_rb24 = __root.avio_rb24;
    pub const avio_rb32 = __root.avio_rb32;
    pub const avio_rb64 = __root.avio_rb64;
    pub const avio_get_str = __root.avio_get_str;
    pub const avio_get_str16le = __root.avio_get_str16le;
    pub const avio_get_str16be = __root.avio_get_str16be;
    pub const avio_close = __root.avio_close;
    pub const avio_get_dyn_buf = __root.avio_get_dyn_buf;
    pub const avio_close_dyn_buf = __root.avio_close_dyn_buf;
    pub const avio_pause = __root.avio_pause;
    pub const avio_seek_time = __root.avio_seek_time;
    pub const avio_read_to_bprint = __root.avio_read_to_bprint;
    pub const avio_accept = __root.avio_accept;
    pub const avio_handshake = __root.avio_handshake;
    pub const av_get_packet = __root.av_get_packet;
    pub const av_append_packet = __root.av_append_packet;
    pub const av_probe_input_buffer2 = __root.av_probe_input_buffer2;
    pub const av_probe_input_buffer = __root.av_probe_input_buffer;
    pub const w8 = __root.avio_w8;
    pub const write = __root.avio_write;
    pub const wl64 = __root.avio_wl64;
    pub const wb64 = __root.avio_wb64;
    pub const wl32 = __root.avio_wl32;
    pub const wb32 = __root.avio_wb32;
    pub const wl24 = __root.avio_wl24;
    pub const wb24 = __root.avio_wb24;
    pub const wl16 = __root.avio_wl16;
    pub const wb16 = __root.avio_wb16;
    pub const str = __root.avio_put_str;
    pub const str16le = __root.avio_put_str16le;
    pub const str16be = __root.avio_put_str16be;
    pub const marker = __root.avio_write_marker;
    pub const skip = __root.avio_skip;
    pub const tell = __root.avio_tell;
    pub const size = __root.avio_size;
    pub const array = __root.avio_print_string_array;
    pub const flush = __root.avio_flush;
    pub const read = __root.avio_read;
    pub const partial = __root.avio_read_partial;
    pub const r8 = __root.avio_r8;
    pub const rl16 = __root.avio_rl16;
    pub const rl24 = __root.avio_rl24;
    pub const rl32 = __root.avio_rl32;
    pub const rl64 = __root.avio_rl64;
    pub const rb16 = __root.avio_rb16;
    pub const rb24 = __root.avio_rb24;
    pub const rb32 = __root.avio_rb32;
    pub const rb64 = __root.avio_rb64;
    pub const close = __root.avio_close;
    pub const buf = __root.avio_get_dyn_buf;
    pub const pause = __root.avio_pause;
    pub const bprint = __root.avio_read_to_bprint;
    pub const accept = __root.avio_accept;
    pub const handshake = __root.avio_handshake;
    pub const packet = __root.av_get_packet;
    pub const buffer2 = __root.av_probe_input_buffer2;
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
pub extern fn avio_alloc_context(buffer: [*c]u8, buffer_size: c_int, write_flag: c_int, @"opaque": ?*anyopaque, read_packet: ?*const fn (@"opaque": ?*anyopaque, buf: [*c]u8, buf_size: c_int) callconv(.c) c_int, write_packet: ?*const fn (@"opaque": ?*anyopaque, buf: [*c]u8, buf_size: c_int) callconv(.c) c_int, seek: ?*const fn (@"opaque": ?*anyopaque, offset: i64, whence: c_int) callconv(.c) i64) [*c]AVIOContext;
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
pub extern fn avio_write_marker(s: [*c]AVIOContext, time: i64, @"type": enum_AVIODataMarkerType) void;
pub extern fn avio_seek(s: [*c]AVIOContext, offset: i64, whence: c_int) i64;
pub extern fn avio_skip(s: [*c]AVIOContext, offset: i64) i64;
pub inline fn avio_tell(arg_s: [*c]AVIOContext) i64 {
    var s = arg_s;
    _ = &s;
    return avio_seek(s, 0, @bitCast(@as(c_uint, @truncate(@as(c_uint, 1)))));
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
pub extern fn avio_enum_protocols(@"opaque": [*c]?*anyopaque, output: c_int) [*c]const u8;
pub extern fn avio_protocol_get_class(name: [*c]const u8) [*c]const AVClass;
pub extern fn avio_pause(h: [*c]AVIOContext, pause: c_int) c_int;
pub extern fn avio_seek_time(h: [*c]AVIOContext, stream_index: c_int, timestamp: i64, flags: c_int) i64;
pub extern fn avio_read_to_bprint(h: [*c]AVIOContext, pb: ?*struct_AVBPrint, max_size: usize) c_int;
pub extern fn avio_accept(s: [*c]AVIOContext, c: [*c][*c]AVIOContext) c_int;
pub extern fn avio_handshake(c: [*c]AVIOContext) c_int;
pub const struct_AVCodecTag = opaque {};
pub const struct_AVProbeData = extern struct {
    filename: [*c]const u8 = null,
    buf: [*c]u8 = null,
    buf_size: c_int = 0,
    mime_type: [*c]const u8 = null,
    pub const av_probe_input_format = __root.av_probe_input_format;
    pub const av_probe_input_format2 = __root.av_probe_input_format2;
    pub const av_probe_input_format3 = __root.av_probe_input_format3;
    pub const format = __root.av_probe_input_format;
    pub const format2 = __root.av_probe_input_format2;
    pub const format3 = __root.av_probe_input_format3;
};
pub const AVProbeData = struct_AVProbeData;
pub const struct_AVDeviceInfoList = opaque {};
pub const struct_AVDeviceCapabilitiesQuery = opaque {};
pub const struct_AVInputFormat = extern struct {
    name: [*c]const u8 = null,
    long_name: [*c]const u8 = null,
    flags: c_int = 0,
    extensions: [*c]const u8 = null,
    codec_tag: [*c]const ?*const struct_AVCodecTag = null,
    priv_class: [*c]const AVClass = null,
    mime_type: [*c]const u8 = null,
    next: [*c]struct_AVInputFormat = null,
    raw_codec_id: c_int = 0,
    priv_data_size: c_int = 0,
    read_probe: ?*const fn ([*c]const AVProbeData) callconv(.c) c_int = null,
    read_header: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    read_packet: ?*const fn ([*c]struct_AVFormatContext, pkt: [*c]AVPacket) callconv(.c) c_int = null,
    read_close: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    read_seek: ?*const fn ([*c]struct_AVFormatContext, stream_index: c_int, timestamp: i64, flags: c_int) callconv(.c) c_int = null,
    read_timestamp: ?*const fn (s: [*c]struct_AVFormatContext, stream_index: c_int, pos: [*c]i64, pos_limit: i64) callconv(.c) i64 = null,
    read_play: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    read_pause: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    read_seek2: ?*const fn (s: [*c]struct_AVFormatContext, stream_index: c_int, min_ts: i64, ts: i64, max_ts: i64, flags: c_int) callconv(.c) c_int = null,
    get_device_list: ?*const fn (s: [*c]struct_AVFormatContext, device_list: ?*struct_AVDeviceInfoList) callconv(.c) c_int = null,
    create_device_capabilities: ?*const fn (s: [*c]struct_AVFormatContext, caps: ?*struct_AVDeviceCapabilitiesQuery) callconv(.c) c_int = null,
    free_device_capabilities: ?*const fn (s: [*c]struct_AVFormatContext, caps: ?*struct_AVDeviceCapabilitiesQuery) callconv(.c) c_int = null,
    pub const av_register_input_format = __root.av_register_input_format;
    pub const av_iformat_next = __root.av_iformat_next;
    pub const format = __root.av_register_input_format;
};
pub const struct_AVOutputFormat = extern struct {
    name: [*c]const u8 = null,
    long_name: [*c]const u8 = null,
    mime_type: [*c]const u8 = null,
    extensions: [*c]const u8 = null,
    audio_codec: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    video_codec: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    subtitle_codec: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    flags: c_int = 0,
    codec_tag: [*c]const ?*const struct_AVCodecTag = null,
    priv_class: [*c]const AVClass = null,
    next: [*c]struct_AVOutputFormat = null,
    priv_data_size: c_int = 0,
    write_header: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    write_packet: ?*const fn ([*c]struct_AVFormatContext, pkt: [*c]AVPacket) callconv(.c) c_int = null,
    write_trailer: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    interleave_packet: ?*const fn ([*c]struct_AVFormatContext, out: [*c]AVPacket, in: [*c]AVPacket, flush: c_int) callconv(.c) c_int = null,
    query_codec: ?*const fn (id: enum_AVCodecID, std_compliance: c_int) callconv(.c) c_int = null,
    get_output_timestamp: ?*const fn (s: [*c]struct_AVFormatContext, stream: c_int, dts: [*c]i64, wall: [*c]i64) callconv(.c) void = null,
    control_message: ?*const fn (s: [*c]struct_AVFormatContext, @"type": c_int, data: ?*anyopaque, data_size: usize) callconv(.c) c_int = null,
    write_uncoded_frame: ?*const fn ([*c]struct_AVFormatContext, stream_index: c_int, frame: [*c][*c]AVFrame, flags: c_uint) callconv(.c) c_int = null,
    get_device_list: ?*const fn (s: [*c]struct_AVFormatContext, device_list: ?*struct_AVDeviceInfoList) callconv(.c) c_int = null,
    create_device_capabilities: ?*const fn (s: [*c]struct_AVFormatContext, caps: ?*struct_AVDeviceCapabilitiesQuery) callconv(.c) c_int = null,
    free_device_capabilities: ?*const fn (s: [*c]struct_AVFormatContext, caps: ?*struct_AVDeviceCapabilitiesQuery) callconv(.c) c_int = null,
    data_codec: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    init: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) c_int = null,
    deinit: ?*const fn ([*c]struct_AVFormatContext) callconv(.c) void = null,
    check_bitstream: ?*const fn ([*c]struct_AVFormatContext, pkt: [*c]const AVPacket) callconv(.c) c_int = null,
    pub const av_register_output_format = __root.av_register_output_format;
    pub const av_oformat_next = __root.av_oformat_next;
    pub const av_guess_codec = __root.av_guess_codec;
    pub const avformat_query_codec = __root.avformat_query_codec;
    pub const avformat_transfer_internal_stream_timing_info = __root.avformat_transfer_internal_stream_timing_info;
    pub const format = __root.av_register_output_format;
    pub const codec = __root.av_guess_codec;
    pub const info = __root.avformat_transfer_internal_stream_timing_info;
};
pub const AVSTREAM_PARSE_NONE: c_int = 0;
pub const AVSTREAM_PARSE_FULL: c_int = 1;
pub const AVSTREAM_PARSE_HEADERS: c_int = 2;
pub const AVSTREAM_PARSE_TIMESTAMPS: c_int = 3;
pub const AVSTREAM_PARSE_FULL_ONCE: c_int = 4;
pub const AVSTREAM_PARSE_FULL_RAW: c_int = 5;
pub const enum_AVStreamParseType = c_uint;
pub const struct_AVStreamInternal = opaque {};
pub const AVStreamInternal = struct_AVStreamInternal;
pub const struct_AVStream = extern struct {
    index: c_int = 0,
    id: c_int = 0,
    codec: [*c]AVCodecContext = null,
    priv_data: ?*anyopaque = null,
    time_base: AVRational = @import("std").mem.zeroes(AVRational),
    start_time: i64 = 0,
    duration: i64 = 0,
    nb_frames: i64 = 0,
    disposition: c_int = 0,
    discard: enum_AVDiscard = @import("std").mem.zeroes(enum_AVDiscard),
    sample_aspect_ratio: AVRational = @import("std").mem.zeroes(AVRational),
    metadata: ?*AVDictionary = null,
    avg_frame_rate: AVRational = @import("std").mem.zeroes(AVRational),
    attached_pic: AVPacket = @import("std").mem.zeroes(AVPacket),
    side_data: [*c]AVPacketSideData = null,
    nb_side_data: c_int = 0,
    event_flags: c_int = 0,
    r_frame_rate: AVRational = @import("std").mem.zeroes(AVRational),
    recommended_encoder_configuration: [*c]u8 = null,
    codecpar: [*c]AVCodecParameters = null,
    unused: ?*anyopaque = null,
    pts_wrap_bits: c_int = 0,
    first_dts: i64 = 0,
    cur_dts: i64 = 0,
    last_IP_pts: i64 = 0,
    last_IP_duration: c_int = 0,
    probe_packets: c_int = 0,
    codec_info_nb_frames: c_int = 0,
    need_parsing: enum_AVStreamParseType = @import("std").mem.zeroes(enum_AVStreamParseType),
    parser: [*c]struct_AVCodecParserContext = null,
    unused7: ?*anyopaque = null,
    unused6: AVProbeData = @import("std").mem.zeroes(AVProbeData),
    unused5: [17]i64 = @import("std").mem.zeroes([17]i64),
    unused2: ?*anyopaque = null,
    unused3: c_int = 0,
    unused4: c_uint = 0,
    stream_identifier: c_int = 0,
    unused8: c_int = 0,
    unused9: c_int = 0,
    unused10: c_int = 0,
    internal: ?*AVStreamInternal = null,
    pub const av_stream_get_r_frame_rate = __root.av_stream_get_r_frame_rate;
    pub const av_stream_set_r_frame_rate = __root.av_stream_set_r_frame_rate;
    pub const av_stream_get_recommended_encoder_configuration = __root.av_stream_get_recommended_encoder_configuration;
    pub const av_stream_set_recommended_encoder_configuration = __root.av_stream_set_recommended_encoder_configuration;
    pub const av_stream_get_parser = __root.av_stream_get_parser;
    pub const av_stream_get_end_pts = __root.av_stream_get_end_pts;
    pub const av_stream_add_side_data = __root.av_stream_add_side_data;
    pub const av_stream_new_side_data = __root.av_stream_new_side_data;
    pub const av_stream_get_side_data = __root.av_stream_get_side_data;
    pub const av_index_search_timestamp = __root.av_index_search_timestamp;
    pub const av_add_index_entry = __root.av_add_index_entry;
    pub const av_stream_get_codec_timebase = __root.av_stream_get_codec_timebase;
    pub const rate = __root.av_stream_get_r_frame_rate;
    pub const configuration = __root.av_stream_get_recommended_encoder_configuration;
    pub const pts = __root.av_stream_get_end_pts;
    pub const data = __root.av_stream_add_side_data;
    pub const timestamp = __root.av_index_search_timestamp;
    pub const entry = __root.av_add_index_entry;
    pub const timebase = __root.av_stream_get_codec_timebase;
};
pub const AVStream = struct_AVStream;
pub const struct_AVProgram = extern struct {
    id: c_int = 0,
    flags: c_int = 0,
    discard: enum_AVDiscard = @import("std").mem.zeroes(enum_AVDiscard),
    stream_index: [*c]c_uint = null,
    nb_stream_indexes: c_uint = 0,
    metadata: ?*AVDictionary = null,
    program_num: c_int = 0,
    pmt_pid: c_int = 0,
    pcr_pid: c_int = 0,
    pmt_version: c_int = 0,
    start_time: i64 = 0,
    end_time: i64 = 0,
    pts_wrap_reference: i64 = 0,
    pts_wrap_behavior: c_int = 0,
};
pub const AVProgram = struct_AVProgram;
pub const struct_AVChapter = extern struct {
    id: c_int = 0,
    time_base: AVRational = @import("std").mem.zeroes(AVRational),
    start: i64 = 0,
    end: i64 = 0,
    metadata: ?*AVDictionary = null,
};
pub const AVChapter = struct_AVChapter;
pub const AVFMT_DURATION_FROM_PTS: c_int = 0;
pub const AVFMT_DURATION_FROM_STREAM: c_int = 1;
pub const AVFMT_DURATION_FROM_BITRATE: c_int = 2;
pub const enum_AVDurationEstimationMethod = c_uint;
pub const struct_AVFormatInternal = opaque {};
pub const AVFormatInternal = struct_AVFormatInternal;
pub const av_format_control_message = ?*const fn (s: [*c]struct_AVFormatContext, @"type": c_int, data: ?*anyopaque, data_size: usize) callconv(.c) c_int;
pub const struct_AVFormatContext = extern struct {
    av_class: [*c]const AVClass = null,
    iformat: [*c]struct_AVInputFormat = null,
    oformat: [*c]struct_AVOutputFormat = null,
    priv_data: ?*anyopaque = null,
    pb: [*c]AVIOContext = null,
    ctx_flags: c_int = 0,
    nb_streams: c_uint = 0,
    streams: [*c][*c]AVStream = null,
    filename: [1024]u8 = @import("std").mem.zeroes([1024]u8),
    url: [*c]u8 = null,
    start_time: i64 = 0,
    duration: i64 = 0,
    bit_rate: i64 = 0,
    packet_size: c_uint = 0,
    max_delay: c_int = 0,
    flags: c_int = 0,
    probesize: i64 = 0,
    max_analyze_duration: i64 = 0,
    key: [*c]const u8 = null,
    keylen: c_int = 0,
    nb_programs: c_uint = 0,
    programs: [*c][*c]AVProgram = null,
    video_codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    audio_codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    subtitle_codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    max_index_size: c_uint = 0,
    max_picture_buffer: c_uint = 0,
    nb_chapters: c_uint = 0,
    chapters: [*c][*c]AVChapter = null,
    metadata: ?*AVDictionary = null,
    start_time_realtime: i64 = 0,
    fps_probe_size: c_int = 0,
    error_recognition: c_int = 0,
    interrupt_callback: AVIOInterruptCB = @import("std").mem.zeroes(AVIOInterruptCB),
    debug: c_int = 0,
    max_interleave_delta: i64 = 0,
    strict_std_compliance: c_int = 0,
    event_flags: c_int = 0,
    max_ts_probe: c_int = 0,
    avoid_negative_ts: c_int = 0,
    ts_id: c_int = 0,
    audio_preload: c_int = 0,
    max_chunk_duration: c_int = 0,
    max_chunk_size: c_int = 0,
    use_wallclock_as_timestamps: c_int = 0,
    avio_flags: c_int = 0,
    duration_estimation_method: enum_AVDurationEstimationMethod = @import("std").mem.zeroes(enum_AVDurationEstimationMethod),
    skip_initial_bytes: i64 = 0,
    correct_ts_overflow: c_uint = 0,
    seek2any: c_int = 0,
    flush_packets: c_int = 0,
    probe_score: c_int = 0,
    format_probesize: c_int = 0,
    codec_whitelist: [*c]u8 = null,
    format_whitelist: [*c]u8 = null,
    internal: ?*AVFormatInternal = null,
    io_repositioned: c_int = 0,
    video_codec: [*c]AVCodec = null,
    audio_codec: [*c]AVCodec = null,
    subtitle_codec: [*c]AVCodec = null,
    data_codec: [*c]AVCodec = null,
    metadata_header_padding: c_int = 0,
    @"opaque": ?*anyopaque = null,
    control_message_cb: av_format_control_message = null,
    output_ts_offset: i64 = 0,
    dump_separator: [*c]u8 = null,
    data_codec_id: enum_AVCodecID = @import("std").mem.zeroes(enum_AVCodecID),
    open_cb: ?*const fn (s: [*c]struct_AVFormatContext, p: [*c][*c]AVIOContext, url: [*c]const u8, flags: c_int, int_cb: [*c]const AVIOInterruptCB, options: [*c]?*AVDictionary) callconv(.c) c_int = null,
    protocol_whitelist: [*c]u8 = null,
    io_open: ?*const fn (s: [*c]struct_AVFormatContext, pb: [*c][*c]AVIOContext, url: [*c]const u8, flags: c_int, options: [*c]?*AVDictionary) callconv(.c) c_int = null,
    io_close: ?*const fn (s: [*c]struct_AVFormatContext, pb: [*c]AVIOContext) callconv(.c) void = null,
    protocol_blacklist: [*c]u8 = null,
    max_streams: c_int = 0,
    skip_estimate_duration_from_pts: c_int = 0,
    max_probe_packets: c_int = 0,
    pub const av_format_get_probe_score = __root.av_format_get_probe_score;
    pub const av_format_get_video_codec = __root.av_format_get_video_codec;
    pub const av_format_set_video_codec = __root.av_format_set_video_codec;
    pub const av_format_get_audio_codec = __root.av_format_get_audio_codec;
    pub const av_format_set_audio_codec = __root.av_format_set_audio_codec;
    pub const av_format_get_subtitle_codec = __root.av_format_get_subtitle_codec;
    pub const av_format_set_subtitle_codec = __root.av_format_set_subtitle_codec;
    pub const av_format_get_data_codec = __root.av_format_get_data_codec;
    pub const av_format_set_data_codec = __root.av_format_set_data_codec;
    pub const av_format_get_metadata_header_padding = __root.av_format_get_metadata_header_padding;
    pub const av_format_set_metadata_header_padding = __root.av_format_set_metadata_header_padding;
    pub const av_format_get_opaque = __root.av_format_get_opaque;
    pub const av_format_set_opaque = __root.av_format_set_opaque;
    pub const av_format_get_control_message_cb = __root.av_format_get_control_message_cb;
    pub const av_format_set_control_message_cb = __root.av_format_set_control_message_cb;
    pub const av_format_get_open_cb = __root.av_format_get_open_cb;
    pub const av_format_set_open_cb = __root.av_format_set_open_cb;
    pub const av_format_inject_global_side_data = __root.av_format_inject_global_side_data;
    pub const av_fmt_ctx_get_duration_estimation_method = __root.av_fmt_ctx_get_duration_estimation_method;
    pub const avformat_free_context = __root.avformat_free_context;
    pub const avformat_new_stream = __root.avformat_new_stream;
    pub const av_new_program = __root.av_new_program;
    pub const av_demuxer_open = __root.av_demuxer_open;
    pub const avformat_find_stream_info = __root.avformat_find_stream_info;
    pub const av_find_program_from_stream = __root.av_find_program_from_stream;
    pub const av_program_add_stream_index = __root.av_program_add_stream_index;
    pub const av_find_best_stream = __root.av_find_best_stream;
    pub const av_read_frame = __root.av_read_frame;
    pub const av_seek_frame = __root.av_seek_frame;
    pub const avformat_seek_file = __root.avformat_seek_file;
    pub const avformat_flush = __root.avformat_flush;
    pub const av_read_play = __root.av_read_play;
    pub const av_read_pause = __root.av_read_pause;
    pub const avformat_write_header = __root.avformat_write_header;
    pub const avformat_init_output = __root.avformat_init_output;
    pub const av_write_frame = __root.av_write_frame;
    pub const av_interleaved_write_frame = __root.av_interleaved_write_frame;
    pub const av_write_uncoded_frame = __root.av_write_uncoded_frame;
    pub const av_interleaved_write_uncoded_frame = __root.av_interleaved_write_uncoded_frame;
    pub const av_write_uncoded_frame_query = __root.av_write_uncoded_frame_query;
    pub const av_write_trailer = __root.av_write_trailer;
    pub const av_get_output_timestamp = __root.av_get_output_timestamp;
    pub const av_find_default_stream_index = __root.av_find_default_stream_index;
    pub const av_dump_format = __root.av_dump_format;
    pub const av_guess_sample_aspect_ratio = __root.av_guess_sample_aspect_ratio;
    pub const av_guess_frame_rate = __root.av_guess_frame_rate;
    pub const avformat_match_stream_specifier = __root.avformat_match_stream_specifier;
    pub const avformat_queue_attached_pictures = __root.avformat_queue_attached_pictures;
    pub const score = __root.av_format_get_probe_score;
    pub const codec = __root.av_format_get_video_codec;
    pub const padding = __root.av_format_get_metadata_header_padding;
    pub const cb = __root.av_format_get_control_message_cb;
    pub const data = __root.av_format_inject_global_side_data;
    pub const method = __root.av_fmt_ctx_get_duration_estimation_method;
    pub const context = __root.avformat_free_context;
    pub const stream = __root.avformat_new_stream;
    pub const program = __root.av_new_program;
    pub const open = __root.av_demuxer_open;
    pub const info = __root.avformat_find_stream_info;
    pub const frame = __root.av_read_frame;
    pub const file = __root.avformat_seek_file;
    pub const flush = __root.avformat_flush;
    pub const play = __root.av_read_play;
    pub const pause = __root.av_read_pause;
    pub const header = __root.avformat_write_header;
    pub const output = __root.avformat_init_output;
    pub const query = __root.av_write_uncoded_frame_query;
    pub const trailer = __root.av_write_trailer;
    pub const timestamp = __root.av_get_output_timestamp;
    pub const format = __root.av_dump_format;
    pub const ratio = __root.av_guess_sample_aspect_ratio;
    pub const rate = __root.av_guess_frame_rate;
    pub const specifier = __root.avformat_match_stream_specifier;
    pub const pictures = __root.avformat_queue_attached_pictures;
};
pub extern fn av_get_packet(s: [*c]AVIOContext, pkt: [*c]AVPacket, size: c_int) c_int;
pub extern fn av_append_packet(s: [*c]AVIOContext, pkt: [*c]AVPacket, size: c_int) c_int;
pub const AVOutputFormat = struct_AVOutputFormat;
pub const AVInputFormat = struct_AVInputFormat;
// ffmpeg-src/libavformat/avformat.h:815:9: warning: struct demoted to opaque type - has bitfield
pub const struct_AVIndexEntry = opaque {};
pub const AVIndexEntry = struct_AVIndexEntry;
pub extern fn av_stream_get_r_frame_rate(s: [*c]const AVStream) AVRational;
pub extern fn av_stream_set_r_frame_rate(s: [*c]AVStream, r: AVRational) void;
pub extern fn av_stream_get_recommended_encoder_configuration(s: [*c]const AVStream) [*c]u8;
pub extern fn av_stream_set_recommended_encoder_configuration(s: [*c]AVStream, configuration: [*c]u8) void;
pub extern fn av_stream_get_parser(s: [*c]const AVStream) [*c]struct_AVCodecParserContext;
pub extern fn av_stream_get_end_pts(st: [*c]const AVStream) i64;
pub const AVOpenCallback = ?*const fn (s: [*c]struct_AVFormatContext, pb: [*c][*c]AVIOContext, url: [*c]const u8, flags: c_int, int_cb: [*c]const AVIOInterruptCB, options: [*c]?*AVDictionary) callconv(.c) c_int;
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
pub extern fn av_format_get_opaque(s: [*c]const AVFormatContext) ?*anyopaque;
pub extern fn av_format_set_opaque(s: [*c]AVFormatContext, @"opaque": ?*anyopaque) void;
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
pub extern fn av_muxer_iterate(@"opaque": [*c]?*anyopaque) [*c]const AVOutputFormat;
pub extern fn av_demuxer_iterate(@"opaque": [*c]?*anyopaque) [*c]const AVInputFormat;
pub extern fn avformat_alloc_context() [*c]AVFormatContext;
pub extern fn avformat_free_context(s: [*c]AVFormatContext) void;
pub extern fn avformat_get_class() [*c]const AVClass;
pub extern fn avformat_new_stream(s: [*c]AVFormatContext, c: [*c]const AVCodec) [*c]AVStream;
pub extern fn av_stream_add_side_data(st: [*c]AVStream, @"type": enum_AVPacketSideDataType, data: [*c]u8, size: usize) c_int;
pub extern fn av_stream_new_side_data(stream: [*c]AVStream, @"type": enum_AVPacketSideDataType, size: c_int) [*c]u8;
pub extern fn av_stream_get_side_data(stream: [*c]const AVStream, @"type": enum_AVPacketSideDataType, size: [*c]c_int) [*c]u8;
pub extern fn av_new_program(s: [*c]AVFormatContext, id: c_int) [*c]AVProgram;
pub extern fn avformat_alloc_output_context2(ctx: [*c][*c]AVFormatContext, oformat: [*c]AVOutputFormat, format_name: [*c]const u8, filename: [*c]const u8) c_int;
pub extern fn av_find_input_format(short_name: [*c]const u8) [*c]AVInputFormat;
pub extern fn av_probe_input_format(pd: [*c]AVProbeData, is_opened: c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_format2(pd: [*c]AVProbeData, is_opened: c_int, score_max: [*c]c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_format3(pd: [*c]AVProbeData, is_opened: c_int, score_ret: [*c]c_int) [*c]AVInputFormat;
pub extern fn av_probe_input_buffer2(pb: [*c]AVIOContext, fmt: [*c][*c]AVInputFormat, url: [*c]const u8, logctx: ?*anyopaque, offset: c_uint, max_probe_size: c_uint) c_int;
pub extern fn av_probe_input_buffer(pb: [*c]AVIOContext, fmt: [*c][*c]AVInputFormat, url: [*c]const u8, logctx: ?*anyopaque, offset: c_uint, max_probe_size: c_uint) c_int;
pub extern fn avformat_open_input(ps: [*c][*c]AVFormatContext, url: [*c]const u8, fmt: [*c]AVInputFormat, options: [*c]?*AVDictionary) c_int;
pub extern fn av_demuxer_open(ic: [*c]AVFormatContext) c_int;
pub extern fn avformat_find_stream_info(ic: [*c]AVFormatContext, options: [*c]?*AVDictionary) c_int;
pub extern fn av_find_program_from_stream(ic: [*c]AVFormatContext, last: [*c]AVProgram, s: c_int) [*c]AVProgram;
pub extern fn av_program_add_stream_index(ac: [*c]AVFormatContext, progid: c_int, idx: c_uint) void;
pub extern fn av_find_best_stream(ic: [*c]AVFormatContext, @"type": enum_AVMediaType, wanted_stream_nb: c_int, related_stream: c_int, decoder_ret: [*c][*c]AVCodec, flags: c_int) c_int;
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
pub extern fn av_guess_codec(fmt: [*c]AVOutputFormat, short_name: [*c]const u8, filename: [*c]const u8, mime_type: [*c]const u8, @"type": enum_AVMediaType) enum_AVCodecID;
pub extern fn av_get_output_timestamp(s: [*c]struct_AVFormatContext, stream: c_int, dts: [*c]i64, wall: [*c]i64) c_int;
pub extern fn av_hex_dump(f: ?*FILE, buf: [*c]const u8, size: c_int) void;
pub extern fn av_hex_dump_log(avcl: ?*anyopaque, level: c_int, buf: [*c]const u8, size: c_int) void;
pub extern fn av_pkt_dump2(f: ?*FILE, pkt: [*c]const AVPacket, dump_payload: c_int, st: [*c]const AVStream) void;
pub extern fn av_pkt_dump_log2(avcl: ?*anyopaque, level: c_int, pkt: [*c]const AVPacket, dump_payload: c_int, st: [*c]const AVStream) void;
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
pub const AVFMT_TBCF_AUTO: c_int = -1;
pub const AVFMT_TBCF_DECODER: c_int = 0;
pub const AVFMT_TBCF_DEMUXER: c_int = 1;
pub const AVFMT_TBCF_R_FRAMERATE: c_int = 2;
pub const enum_AVTimebaseSource = c_int;
pub extern fn avformat_transfer_internal_stream_timing_info(ofmt: [*c]const AVOutputFormat, ost: [*c]AVStream, ist: [*c]const AVStream, copy_tb: enum_AVTimebaseSource) c_int;
pub extern fn av_stream_get_codec_timebase(st: [*c]const AVStream) AVRational;

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 0);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_CLANG__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 0);
pub const TARGET_OS_OSX = @as(c_int, 0);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_VISION = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const TARGET_OS_UEFI = @as(c_int, 0);
pub const __wasm = @as(c_int, 1);
pub const __wasm__ = @as(c_int, 1);
pub const __wasm32 = @as(c_int, 1);
pub const __wasm32__ = @as(c_int, 1);
pub const __wasm_bulk_memory_opt__ = @as(c_int, 1);
pub const __wasm_call_indirect_overlong__ = @as(c_int, 1);
pub const __wasm_extended_const__ = @as(c_int, 1);
pub const __wasm_multivalue__ = @as(c_int, 1);
pub const __wasm_mutable_globals__ = @as(c_int, 1);
pub const __wasm_nontrapping_fptoint__ = @as(c_int, 1);
pub const __wasm_sign_ext__ = @as(c_int, 1);
pub const _ILP32 = @as(c_int, 1);
pub const __ILP32__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulong, 4294967295);
pub const __SIZE_WIDTH__ = @as(c_int, 32);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_long, 2147483647);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 32);
pub const __INTPTR_MAX__ = @as(c_long, 2147483647);
pub const __INTPTR_WIDTH__ = @as(c_int, 32);
pub const __UINTPTR_MAX__ = @as(c_ulong, 4294967295);
pub const __UINTPTR_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @as(c_long, 2147483647);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 4);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 4);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 4);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// <builtin>:122:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// <builtin>:125:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// <builtin>:151:9
pub const __INT64_C = __helpers.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// <builtin>:176:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// <builtin>:185:9
pub const __UINT64_C = __helpers.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "lld";
pub const INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_LEAST64_FMTo__ = "llo";
pub const UINT_LEAST64_FMTu__ = "llu";
pub const UINT_LEAST64_FMTx__ = "llx";
pub const UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "lld";
pub const INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_FAST64_FMTo__ = "llo";
pub const UINT_FAST64_FMTu__ = "llu";
pub const UINT_FAST64_FMTx__ = "llx";
pub const UINT_FAST64_FMTX__ = "llX";
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 33);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 36);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 113);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __wasi__ = @as(c_int, 1);
pub const AVFORMAT_AVFORMAT_H = "";
pub const _TIME_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// sysroot/usr/include/wasm32-wasi/features.h:20:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// sysroot/usr/include/wasm32-wasi/features.h:26:9
pub const __REDIR = @compileError("unable to translate C expr: unexpected token '__typeof__'");
// sysroot/usr/include/wasm32-wasi/features.h:38:9
pub const __need_NULL = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`");
// /opt/zig/lib/compiler/aro/include/stddef.h:18:9
pub const __NEED_size_t = "";
pub const __NEED_time_t = "";
pub const __NEED_clock_t = "";
pub const __NEED_struct_timespec = "";
pub const __NEED_clockid_t = "";
pub const __NEED_timer_t = "";
pub const __NEED_pid_t = "";
pub const __NEED_locale_t = "";
pub const __BYTE_ORDER = __BYTE_ORDER__;
pub const __LONG_MAX = __LONG_MAX__;
pub const __wasilibc___typedef_time_t_h = "";
pub const __DEFINED_time_t = "";
pub const __wasilibc___typedef_clockid_t_h = "";
pub const __DEFINED_clockid_t = "";
pub const __wasilibc___typedef_clock_t_h = "";
pub const __DEFINED_clock_t = "";
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __DEFINED_size_t = "";
pub const __DEFINED_timer_t = "";
pub const __wasilibc___struct_timeval_h = "";
pub const __wasilibc___typedef_suseconds_t_h = "";
pub const __wasilibc___struct_timespec_h = "";
pub const __DEFINED_pid_t = "";
pub const __DEFINED_locale_t = "";
pub const __wasilibc___struct_iovec_h = "";
pub const __need_size_t = "";
pub const __tm_gmtoff = @compileError("unable to translate macro: undefined identifier `tm_gmtoff`");
// sysroot/usr/include/wasm32-wasi/time.h:41:9
pub const __tm_zone = @compileError("unable to translate macro: undefined identifier `tm_zone`");
// sysroot/usr/include/wasm32-wasi/time.h:42:9
pub const __wasilibc___header_time_h = "";
pub const __wasilibc___struct_tm_h = "";
pub const __wasi_api_h = "";
pub const __stdint_int_c_cat = @compileError("unable to translate C expr: unexpected token '##'");
// /opt/zig/lib/compiler/aro/include/stdint.h:35:9
pub inline fn __stdint_int_c(V: anytype, SUFFIX: anytype) @TypeOf(__stdint_int_c_cat(V, SUFFIX)) {
    _ = &V;
    _ = &SUFFIX;
    return __stdint_int_c_cat(V, SUFFIX);
}
pub const __stdint_uint_c = @compileError("unable to translate macro: undefined identifier `U`");
// /opt/zig/lib/compiler/aro/include/stdint.h:37:9
pub const INTPTR_MIN = -__INTPTR_MAX__ - @as(c_int, 1);
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const PTRDIFF_MIN = -__PTRDIFF_MAX__ - @as(c_int, 1);
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const SIZE_MAX = __SIZE_MAX__;
pub const INTMAX_MIN = -__INTMAX_MAX__ - @as(c_int, 1);
pub const INTMAX_MAX = __INTMAX_MAX__;
pub const UINTMAX_MAX = __UINTMAX_MAX__;
pub const __intptr_t_defined = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const __int64_c_suffix = __INT64_C_SUFFIX__;
pub inline fn INT64_C(v: anytype) @TypeOf(__stdint_int_c(v, __int64_c_suffix)) {
    _ = &v;
    return __stdint_int_c(v, __int64_c_suffix);
}
pub inline fn UINT64_C(v: anytype) @TypeOf(__stdint_uint_c(v, __int64_c_suffix)) {
    _ = &v;
    return __stdint_uint_c(v, __int64_c_suffix);
}
pub const INT64_MAX = INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const INT64_MIN = -INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const UINT64_MAX = UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const __int32_c_suffix = "";
pub inline fn INT32_C(v: anytype) @TypeOf(__stdint_int_c(v, __int32_c_suffix)) {
    _ = &v;
    return __stdint_int_c(v, __int32_c_suffix);
}
pub inline fn UINT32_C(v: anytype) @TypeOf(__stdint_uint_c(v, __int32_c_suffix)) {
    _ = &v;
    return __stdint_uint_c(v, __int32_c_suffix);
}
pub const INT32_MAX = INT32_C(__helpers.promoteIntLiteral(c_int, 2147483647, .decimal));
pub const INT32_MIN = -INT32_C(__helpers.promoteIntLiteral(c_int, 2147483647, .decimal)) - @as(c_int, 1);
pub const UINT32_MAX = UINT32_C(__helpers.promoteIntLiteral(c_int, 4294967295, .decimal));
pub const __int16_c_suffix = "";
pub inline fn INT16_C(v: anytype) @TypeOf(__stdint_int_c(v, __int16_c_suffix)) {
    _ = &v;
    return __stdint_int_c(v, __int16_c_suffix);
}
pub inline fn UINT16_C(v: anytype) @TypeOf(__stdint_uint_c(v, __int16_c_suffix)) {
    _ = &v;
    return __stdint_uint_c(v, __int16_c_suffix);
}
pub const INT16_MAX = INT16_C(@as(c_int, 32767));
pub const INT16_MIN = -INT16_C(@as(c_int, 32767)) - @as(c_int, 1);
pub const UINT16_MAX = UINT16_C(__helpers.promoteIntLiteral(c_int, 65535, .decimal));
pub const __int8_c_suffix = "";
pub inline fn INT8_C(v: anytype) @TypeOf(__stdint_int_c(v, __int8_c_suffix)) {
    _ = &v;
    return __stdint_int_c(v, __int8_c_suffix);
}
pub inline fn UINT8_C(v: anytype) @TypeOf(__stdint_uint_c(v, __int8_c_suffix)) {
    _ = &v;
    return __stdint_uint_c(v, __int8_c_suffix);
}
pub const INT8_MAX = INT8_C(@as(c_int, 127));
pub const INT8_MIN = -INT8_C(@as(c_int, 127)) - @as(c_int, 1);
pub const UINT8_MAX = UINT8_C(@as(c_int, 255));
pub const INT_LEAST8_MAX = __INT_LEAST8_MAX__;
pub const INT_LEAST8_MIN = -__INT_LEAST8_MAX__ - @as(c_int, 1);
pub const UINT_LEAST8_MAX = __UINT_LEAST8_MAX__;
pub const INT_LEAST16_MAX = __INT_LEAST16_MAX__;
pub const INT_LEAST16_MIN = -__INT_LEAST16_MAX__ - @as(c_int, 1);
pub const UINT_LEAST16_MAX = __UINT_LEAST16_MAX__;
pub const INT_LEAST32_MAX = __INT_LEAST32_MAX__;
pub const INT_LEAST32_MIN = -__INT_LEAST32_MAX__ - @as(c_int, 1);
pub const UINT_LEAST32_MAX = __UINT_LEAST32_MAX__;
pub const INT_LEAST64_MAX = __INT_LEAST64_MAX__;
pub const INT_LEAST64_MIN = -__INT_LEAST64_MAX__ - @as(c_int, 1);
pub const UINT_LEAST64_MAX = __UINT_LEAST64_MAX__;
pub const INT_FAST8_MAX = __INT_FAST8_MAX__;
pub const INT_FAST8_MIN = -__INT_FAST8_MAX__ - @as(c_int, 1);
pub const UINT_FAST8_MAX = __UINT_FAST8_MAX__;
pub const INT_FAST16_MAX = __INT_FAST16_MAX__;
pub const INT_FAST16_MIN = -__INT_FAST16_MAX__ - @as(c_int, 1);
pub const UINT_FAST16_MAX = __UINT_FAST16_MAX__;
pub const INT_FAST32_MAX = __INT_FAST32_MAX__;
pub const INT_FAST32_MIN = -__INT_FAST32_MAX__ - @as(c_int, 1);
pub const UINT_FAST32_MAX = __UINT_FAST32_MAX__;
pub const INT_FAST64_MAX = __INT_FAST64_MAX__;
pub const INT_FAST64_MIN = -__INT_FAST64_MAX__ - @as(c_int, 1);
pub const UINT_FAST64_MAX = __UINT_FAST64_MAX__;
pub const UINT128_MAX = __helpers.cast(uint128_t, -@as(c_int, 1));
pub const INT128_MAX = __helpers.cast(int128_t, __helpers.div(UINT128_MAX, @as(c_int, 2)));
pub const INT128_MIN = -INT128_MAX - @as(c_int, 1);
pub const UINT_LEAST128_MAX = UINT128_MAX;
pub const INT_LEAST128_MAX = INT128_MAX;
pub const INT_LEAST128_MIN = INT128_MIN;
pub const UINT_FAST128_MAX = UINT128_MAX;
pub const INT_FAST128_MAX = INT128_MAX;
pub const INT_FAST128_MIN = INT128_MIN;
pub const INT128_WIDTH = @as(c_int, 128);
pub const UINT128_WIDTH = @as(c_int, 128);
pub const INT_LEAST128_WIDTH = @as(c_int, 128);
pub const UINT_LEAST128_WIDTH = @as(c_int, 128);
pub const INT_FAST128_WIDTH = @as(c_int, 128);
pub const UINT_FAST128_WIDTH = @as(c_int, 128);
pub const INT128_C = @compileError("unable to translate macro: undefined identifier `WB`");
// /opt/zig/lib/compiler/aro/include/stdint.h:304:11
pub const UINT128_C = @compileError("unable to translate macro: undefined identifier `WBU`");
// /opt/zig/lib/compiler/aro/include/stdint.h:305:11
pub const __WASI_DIRCOOKIE_START = UINT64_C(@as(c_int, 0));
pub const __WASI_CLOCKID_REALTIME = UINT32_C(@as(c_int, 0));
pub const __WASI_CLOCKID_MONOTONIC = UINT32_C(@as(c_int, 1));
pub const __WASI_CLOCKID_PROCESS_CPUTIME_ID = UINT32_C(@as(c_int, 2));
pub const __WASI_CLOCKID_THREAD_CPUTIME_ID = UINT32_C(@as(c_int, 3));
pub const __WASI_ERRNO_SUCCESS = UINT16_C(@as(c_int, 0));
pub const __WASI_ERRNO_2BIG = UINT16_C(@as(c_int, 1));
pub const __WASI_ERRNO_ACCES = UINT16_C(@as(c_int, 2));
pub const __WASI_ERRNO_ADDRINUSE = UINT16_C(@as(c_int, 3));
pub const __WASI_ERRNO_ADDRNOTAVAIL = UINT16_C(@as(c_int, 4));
pub const __WASI_ERRNO_AFNOSUPPORT = UINT16_C(@as(c_int, 5));
pub const __WASI_ERRNO_AGAIN = UINT16_C(@as(c_int, 6));
pub const __WASI_ERRNO_ALREADY = UINT16_C(@as(c_int, 7));
pub const __WASI_ERRNO_BADF = UINT16_C(@as(c_int, 8));
pub const __WASI_ERRNO_BADMSG = UINT16_C(@as(c_int, 9));
pub const __WASI_ERRNO_BUSY = UINT16_C(@as(c_int, 10));
pub const __WASI_ERRNO_CANCELED = UINT16_C(@as(c_int, 11));
pub const __WASI_ERRNO_CHILD = UINT16_C(@as(c_int, 12));
pub const __WASI_ERRNO_CONNABORTED = UINT16_C(@as(c_int, 13));
pub const __WASI_ERRNO_CONNREFUSED = UINT16_C(@as(c_int, 14));
pub const __WASI_ERRNO_CONNRESET = UINT16_C(@as(c_int, 15));
pub const __WASI_ERRNO_DEADLK = UINT16_C(@as(c_int, 16));
pub const __WASI_ERRNO_DESTADDRREQ = UINT16_C(@as(c_int, 17));
pub const __WASI_ERRNO_DOM = UINT16_C(@as(c_int, 18));
pub const __WASI_ERRNO_DQUOT = UINT16_C(@as(c_int, 19));
pub const __WASI_ERRNO_EXIST = UINT16_C(@as(c_int, 20));
pub const __WASI_ERRNO_FAULT = UINT16_C(@as(c_int, 21));
pub const __WASI_ERRNO_FBIG = UINT16_C(@as(c_int, 22));
pub const __WASI_ERRNO_HOSTUNREACH = UINT16_C(@as(c_int, 23));
pub const __WASI_ERRNO_IDRM = UINT16_C(@as(c_int, 24));
pub const __WASI_ERRNO_ILSEQ = UINT16_C(@as(c_int, 25));
pub const __WASI_ERRNO_INPROGRESS = UINT16_C(@as(c_int, 26));
pub const __WASI_ERRNO_INTR = UINT16_C(@as(c_int, 27));
pub const __WASI_ERRNO_INVAL = UINT16_C(@as(c_int, 28));
pub const __WASI_ERRNO_IO = UINT16_C(@as(c_int, 29));
pub const __WASI_ERRNO_ISCONN = UINT16_C(@as(c_int, 30));
pub const __WASI_ERRNO_ISDIR = UINT16_C(@as(c_int, 31));
pub const __WASI_ERRNO_LOOP = UINT16_C(@as(c_int, 32));
pub const __WASI_ERRNO_MFILE = UINT16_C(@as(c_int, 33));
pub const __WASI_ERRNO_MLINK = UINT16_C(@as(c_int, 34));
pub const __WASI_ERRNO_MSGSIZE = UINT16_C(@as(c_int, 35));
pub const __WASI_ERRNO_MULTIHOP = UINT16_C(@as(c_int, 36));
pub const __WASI_ERRNO_NAMETOOLONG = UINT16_C(@as(c_int, 37));
pub const __WASI_ERRNO_NETDOWN = UINT16_C(@as(c_int, 38));
pub const __WASI_ERRNO_NETRESET = UINT16_C(@as(c_int, 39));
pub const __WASI_ERRNO_NETUNREACH = UINT16_C(@as(c_int, 40));
pub const __WASI_ERRNO_NFILE = UINT16_C(@as(c_int, 41));
pub const __WASI_ERRNO_NOBUFS = UINT16_C(@as(c_int, 42));
pub const __WASI_ERRNO_NODEV = UINT16_C(@as(c_int, 43));
pub const __WASI_ERRNO_NOENT = UINT16_C(@as(c_int, 44));
pub const __WASI_ERRNO_NOEXEC = UINT16_C(@as(c_int, 45));
pub const __WASI_ERRNO_NOLCK = UINT16_C(@as(c_int, 46));
pub const __WASI_ERRNO_NOLINK = UINT16_C(@as(c_int, 47));
pub const __WASI_ERRNO_NOMEM = UINT16_C(@as(c_int, 48));
pub const __WASI_ERRNO_NOMSG = UINT16_C(@as(c_int, 49));
pub const __WASI_ERRNO_NOPROTOOPT = UINT16_C(@as(c_int, 50));
pub const __WASI_ERRNO_NOSPC = UINT16_C(@as(c_int, 51));
pub const __WASI_ERRNO_NOSYS = UINT16_C(@as(c_int, 52));
pub const __WASI_ERRNO_NOTCONN = UINT16_C(@as(c_int, 53));
pub const __WASI_ERRNO_NOTDIR = UINT16_C(@as(c_int, 54));
pub const __WASI_ERRNO_NOTEMPTY = UINT16_C(@as(c_int, 55));
pub const __WASI_ERRNO_NOTRECOVERABLE = UINT16_C(@as(c_int, 56));
pub const __WASI_ERRNO_NOTSOCK = UINT16_C(@as(c_int, 57));
pub const __WASI_ERRNO_NOTSUP = UINT16_C(@as(c_int, 58));
pub const __WASI_ERRNO_NOTTY = UINT16_C(@as(c_int, 59));
pub const __WASI_ERRNO_NXIO = UINT16_C(@as(c_int, 60));
pub const __WASI_ERRNO_OVERFLOW = UINT16_C(@as(c_int, 61));
pub const __WASI_ERRNO_OWNERDEAD = UINT16_C(@as(c_int, 62));
pub const __WASI_ERRNO_PERM = UINT16_C(@as(c_int, 63));
pub const __WASI_ERRNO_PIPE = UINT16_C(@as(c_int, 64));
pub const __WASI_ERRNO_PROTO = UINT16_C(@as(c_int, 65));
pub const __WASI_ERRNO_PROTONOSUPPORT = UINT16_C(@as(c_int, 66));
pub const __WASI_ERRNO_PROTOTYPE = UINT16_C(@as(c_int, 67));
pub const __WASI_ERRNO_RANGE = UINT16_C(@as(c_int, 68));
pub const __WASI_ERRNO_ROFS = UINT16_C(@as(c_int, 69));
pub const __WASI_ERRNO_SPIPE = UINT16_C(@as(c_int, 70));
pub const __WASI_ERRNO_SRCH = UINT16_C(@as(c_int, 71));
pub const __WASI_ERRNO_STALE = UINT16_C(@as(c_int, 72));
pub const __WASI_ERRNO_TIMEDOUT = UINT16_C(@as(c_int, 73));
pub const __WASI_ERRNO_TXTBSY = UINT16_C(@as(c_int, 74));
pub const __WASI_ERRNO_XDEV = UINT16_C(@as(c_int, 75));
pub const __WASI_ERRNO_NOTCAPABLE = UINT16_C(@as(c_int, 76));
pub const __WASI_RIGHTS_FD_DATASYNC = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_RIGHTS_FD_READ = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_RIGHTS_FD_SEEK = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 2));
pub const __WASI_RIGHTS_FD_FDSTAT_SET_FLAGS = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 3));
pub const __WASI_RIGHTS_FD_SYNC = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 4));
pub const __WASI_RIGHTS_FD_TELL = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 5));
pub const __WASI_RIGHTS_FD_WRITE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 6));
pub const __WASI_RIGHTS_FD_ADVISE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 7));
pub const __WASI_RIGHTS_FD_ALLOCATE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 8));
pub const __WASI_RIGHTS_PATH_CREATE_DIRECTORY = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 9));
pub const __WASI_RIGHTS_PATH_CREATE_FILE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 10));
pub const __WASI_RIGHTS_PATH_LINK_SOURCE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 11));
pub const __WASI_RIGHTS_PATH_LINK_TARGET = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 12));
pub const __WASI_RIGHTS_PATH_OPEN = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 13));
pub const __WASI_RIGHTS_FD_READDIR = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 14));
pub const __WASI_RIGHTS_PATH_READLINK = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 15));
pub const __WASI_RIGHTS_PATH_RENAME_SOURCE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 16));
pub const __WASI_RIGHTS_PATH_RENAME_TARGET = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 17));
pub const __WASI_RIGHTS_PATH_FILESTAT_GET = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 18));
pub const __WASI_RIGHTS_PATH_FILESTAT_SET_SIZE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 19));
pub const __WASI_RIGHTS_PATH_FILESTAT_SET_TIMES = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 20));
pub const __WASI_RIGHTS_FD_FILESTAT_GET = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 21));
pub const __WASI_RIGHTS_FD_FILESTAT_SET_SIZE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 22));
pub const __WASI_RIGHTS_FD_FILESTAT_SET_TIMES = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 23));
pub const __WASI_RIGHTS_PATH_SYMLINK = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 24));
pub const __WASI_RIGHTS_PATH_REMOVE_DIRECTORY = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 25));
pub const __WASI_RIGHTS_PATH_UNLINK_FILE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 26));
pub const __WASI_RIGHTS_POLL_FD_READWRITE = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 27));
pub const __WASI_RIGHTS_SOCK_SHUTDOWN = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 28));
pub const __WASI_RIGHTS_SOCK_ACCEPT = __helpers.cast(__wasi_rights_t, @as(c_int, 1) << @as(c_int, 29));
pub const __WASI_WHENCE_SET = UINT8_C(@as(c_int, 0));
pub const __WASI_WHENCE_CUR = UINT8_C(@as(c_int, 1));
pub const __WASI_WHENCE_END = UINT8_C(@as(c_int, 2));
pub const __WASI_FILETYPE_UNKNOWN = UINT8_C(@as(c_int, 0));
pub const __WASI_FILETYPE_BLOCK_DEVICE = UINT8_C(@as(c_int, 1));
pub const __WASI_FILETYPE_CHARACTER_DEVICE = UINT8_C(@as(c_int, 2));
pub const __WASI_FILETYPE_DIRECTORY = UINT8_C(@as(c_int, 3));
pub const __WASI_FILETYPE_REGULAR_FILE = UINT8_C(@as(c_int, 4));
pub const __WASI_FILETYPE_SOCKET_DGRAM = UINT8_C(@as(c_int, 5));
pub const __WASI_FILETYPE_SOCKET_STREAM = UINT8_C(@as(c_int, 6));
pub const __WASI_FILETYPE_SYMBOLIC_LINK = UINT8_C(@as(c_int, 7));
pub const __WASI_ADVICE_NORMAL = UINT8_C(@as(c_int, 0));
pub const __WASI_ADVICE_SEQUENTIAL = UINT8_C(@as(c_int, 1));
pub const __WASI_ADVICE_RANDOM = UINT8_C(@as(c_int, 2));
pub const __WASI_ADVICE_WILLNEED = UINT8_C(@as(c_int, 3));
pub const __WASI_ADVICE_DONTNEED = UINT8_C(@as(c_int, 4));
pub const __WASI_ADVICE_NOREUSE = UINT8_C(@as(c_int, 5));
pub const __WASI_FDFLAGS_APPEND = __helpers.cast(__wasi_fdflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_FDFLAGS_DSYNC = __helpers.cast(__wasi_fdflags_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_FDFLAGS_NONBLOCK = __helpers.cast(__wasi_fdflags_t, @as(c_int, 1) << @as(c_int, 2));
pub const __WASI_FDFLAGS_RSYNC = __helpers.cast(__wasi_fdflags_t, @as(c_int, 1) << @as(c_int, 3));
pub const __WASI_FDFLAGS_SYNC = __helpers.cast(__wasi_fdflags_t, @as(c_int, 1) << @as(c_int, 4));
pub const __WASI_FSTFLAGS_ATIM = __helpers.cast(__wasi_fstflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_FSTFLAGS_ATIM_NOW = __helpers.cast(__wasi_fstflags_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_FSTFLAGS_MTIM = __helpers.cast(__wasi_fstflags_t, @as(c_int, 1) << @as(c_int, 2));
pub const __WASI_FSTFLAGS_MTIM_NOW = __helpers.cast(__wasi_fstflags_t, @as(c_int, 1) << @as(c_int, 3));
pub const __WASI_LOOKUPFLAGS_SYMLINK_FOLLOW = __helpers.cast(__wasi_lookupflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_OFLAGS_CREAT = __helpers.cast(__wasi_oflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_OFLAGS_DIRECTORY = __helpers.cast(__wasi_oflags_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_OFLAGS_EXCL = __helpers.cast(__wasi_oflags_t, @as(c_int, 1) << @as(c_int, 2));
pub const __WASI_OFLAGS_TRUNC = __helpers.cast(__wasi_oflags_t, @as(c_int, 1) << @as(c_int, 3));
pub const __WASI_EVENTTYPE_CLOCK = UINT8_C(@as(c_int, 0));
pub const __WASI_EVENTTYPE_FD_READ = UINT8_C(@as(c_int, 1));
pub const __WASI_EVENTTYPE_FD_WRITE = UINT8_C(@as(c_int, 2));
pub const __WASI_EVENTRWFLAGS_FD_READWRITE_HANGUP = __helpers.cast(__wasi_eventrwflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_SUBCLOCKFLAGS_SUBSCRIPTION_CLOCK_ABSTIME = __helpers.cast(__wasi_subclockflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_RIFLAGS_RECV_PEEK = __helpers.cast(__wasi_riflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_RIFLAGS_RECV_WAITALL = __helpers.cast(__wasi_riflags_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_ROFLAGS_RECV_DATA_TRUNCATED = __helpers.cast(__wasi_roflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_SDFLAGS_RD = __helpers.cast(__wasi_sdflags_t, @as(c_int, 1) << @as(c_int, 0));
pub const __WASI_SDFLAGS_WR = __helpers.cast(__wasi_sdflags_t, @as(c_int, 1) << @as(c_int, 1));
pub const __WASI_PREOPENTYPE_DIR = UINT8_C(@as(c_int, 0));
pub const TIMER_ABSTIME = __WASI_SUBCLOCKFLAGS_SUBSCRIPTION_CLOCK_ABSTIME;
pub const CLOCK_MONOTONIC = &_CLOCK_MONOTONIC;
pub const CLOCK_REALTIME = &_CLOCK_REALTIME;
pub const TIME_UTC = @as(c_int, 1);
pub const CLOCKS_PER_SEC = __helpers.cast(clock_t, __helpers.promoteIntLiteral(c_int, 1000000000, .decimal));
pub const _STDIO_H = "";
pub const __NEED_FILE = "";
pub const __NEED___isoc_va_list = "";
pub const __NEED_ssize_t = "";
pub const __NEED_off_t = "";
pub const __NEED_va_list = "";
pub const __DEFINED_ssize_t = "";
pub const __DEFINED_off_t = "";
pub const __DEFINED_FILE = "";
pub const __DEFINED_va_list = "";
pub const __DEFINED___isoc_va_list = "";
pub const EOF = -@as(c_int, 1);
pub const __wasilibc___seek_h = "";
pub const SEEK_CUR = __WASI_WHENCE_CUR;
pub const SEEK_END = __WASI_WHENCE_END;
pub const SEEK_SET = __WASI_WHENCE_SET;
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const FOPEN_MAX = @as(c_int, 1000);
pub const L_ctermid = @as(c_int, 20);
pub const L_cuserid = @as(c_int, 20);
pub const AVCODEC_AVCODEC_H = "";
pub const _ERRNO_H = "";
pub const __wasilibc___errno_h = "";
pub const __wasilibc___errno_values_h = "";
pub const E2BIG = __WASI_ERRNO_2BIG;
pub const EACCES = __WASI_ERRNO_ACCES;
pub const EADDRINUSE = __WASI_ERRNO_ADDRINUSE;
pub const EADDRNOTAVAIL = __WASI_ERRNO_ADDRNOTAVAIL;
pub const EAFNOSUPPORT = __WASI_ERRNO_AFNOSUPPORT;
pub const EAGAIN = __WASI_ERRNO_AGAIN;
pub const EALREADY = __WASI_ERRNO_ALREADY;
pub const EBADF = __WASI_ERRNO_BADF;
pub const EBADMSG = __WASI_ERRNO_BADMSG;
pub const EBUSY = __WASI_ERRNO_BUSY;
pub const ECANCELED = __WASI_ERRNO_CANCELED;
pub const ECHILD = __WASI_ERRNO_CHILD;
pub const ECONNABORTED = __WASI_ERRNO_CONNABORTED;
pub const ECONNREFUSED = __WASI_ERRNO_CONNREFUSED;
pub const ECONNRESET = __WASI_ERRNO_CONNRESET;
pub const EDEADLK = __WASI_ERRNO_DEADLK;
pub const EDESTADDRREQ = __WASI_ERRNO_DESTADDRREQ;
pub const EDOM = __WASI_ERRNO_DOM;
pub const EDQUOT = __WASI_ERRNO_DQUOT;
pub const EEXIST = __WASI_ERRNO_EXIST;
pub const EFAULT = __WASI_ERRNO_FAULT;
pub const EFBIG = __WASI_ERRNO_FBIG;
pub const EHOSTUNREACH = __WASI_ERRNO_HOSTUNREACH;
pub const EIDRM = __WASI_ERRNO_IDRM;
pub const EILSEQ = __WASI_ERRNO_ILSEQ;
pub const EINPROGRESS = __WASI_ERRNO_INPROGRESS;
pub const EINTR = __WASI_ERRNO_INTR;
pub const EINVAL = __WASI_ERRNO_INVAL;
pub const EIO = __WASI_ERRNO_IO;
pub const EISCONN = __WASI_ERRNO_ISCONN;
pub const EISDIR = __WASI_ERRNO_ISDIR;
pub const ELOOP = __WASI_ERRNO_LOOP;
pub const EMFILE = __WASI_ERRNO_MFILE;
pub const EMLINK = __WASI_ERRNO_MLINK;
pub const EMSGSIZE = __WASI_ERRNO_MSGSIZE;
pub const EMULTIHOP = __WASI_ERRNO_MULTIHOP;
pub const ENAMETOOLONG = __WASI_ERRNO_NAMETOOLONG;
pub const ENETDOWN = __WASI_ERRNO_NETDOWN;
pub const ENETRESET = __WASI_ERRNO_NETRESET;
pub const ENETUNREACH = __WASI_ERRNO_NETUNREACH;
pub const ENFILE = __WASI_ERRNO_NFILE;
pub const ENOBUFS = __WASI_ERRNO_NOBUFS;
pub const ENODEV = __WASI_ERRNO_NODEV;
pub const ENOENT = __WASI_ERRNO_NOENT;
pub const ENOEXEC = __WASI_ERRNO_NOEXEC;
pub const ENOLCK = __WASI_ERRNO_NOLCK;
pub const ENOLINK = __WASI_ERRNO_NOLINK;
pub const ENOMEM = __WASI_ERRNO_NOMEM;
pub const ENOMSG = __WASI_ERRNO_NOMSG;
pub const ENOPROTOOPT = __WASI_ERRNO_NOPROTOOPT;
pub const ENOSPC = __WASI_ERRNO_NOSPC;
pub const ENOSYS = __WASI_ERRNO_NOSYS;
pub const ENOTCONN = __WASI_ERRNO_NOTCONN;
pub const ENOTDIR = __WASI_ERRNO_NOTDIR;
pub const ENOTEMPTY = __WASI_ERRNO_NOTEMPTY;
pub const ENOTRECOVERABLE = __WASI_ERRNO_NOTRECOVERABLE;
pub const ENOTSOCK = __WASI_ERRNO_NOTSOCK;
pub const ENOTSUP = __WASI_ERRNO_NOTSUP;
pub const ENOTTY = __WASI_ERRNO_NOTTY;
pub const ENXIO = __WASI_ERRNO_NXIO;
pub const EOVERFLOW = __WASI_ERRNO_OVERFLOW;
pub const EOWNERDEAD = __WASI_ERRNO_OWNERDEAD;
pub const EPERM = __WASI_ERRNO_PERM;
pub const EPIPE = __WASI_ERRNO_PIPE;
pub const EPROTO = __WASI_ERRNO_PROTO;
pub const EPROTONOSUPPORT = __WASI_ERRNO_PROTONOSUPPORT;
pub const EPROTOTYPE = __WASI_ERRNO_PROTOTYPE;
pub const ERANGE = __WASI_ERRNO_RANGE;
pub const EROFS = __WASI_ERRNO_ROFS;
pub const ESPIPE = __WASI_ERRNO_SPIPE;
pub const ESRCH = __WASI_ERRNO_SRCH;
pub const ESTALE = __WASI_ERRNO_STALE;
pub const ETIMEDOUT = __WASI_ERRNO_TIMEDOUT;
pub const ETXTBSY = __WASI_ERRNO_TXTBSY;
pub const EXDEV = __WASI_ERRNO_XDEV;
pub const ENOTCAPABLE = __WASI_ERRNO_NOTCAPABLE;
pub const EOPNOTSUPP = ENOTSUP;
pub const EWOULDBLOCK = EAGAIN;
pub const AVUTIL_SAMPLEFMT_H = "";
pub const AVUTIL_AVUTIL_H = "";
pub const FF_LAMBDA_SHIFT = @as(c_int, 7);
pub const FF_LAMBDA_SCALE = @as(c_int, 1) << FF_LAMBDA_SHIFT;
pub const FF_QP2LAMBDA = @as(c_int, 118);
pub const FF_LAMBDA_MAX = (@as(c_int, 256) * @as(c_int, 128)) - @as(c_int, 1);
pub const FF_QUALITY_SCALE = FF_LAMBDA_SCALE;
pub const AV_NOPTS_VALUE = __helpers.cast(i64, UINT64_C(__helpers.promoteIntLiteral(c_int, 0x8000000000000000, .hex)));
pub const AV_TIME_BASE = __helpers.promoteIntLiteral(c_int, 1000000, .decimal);
pub const AV_TIME_BASE_Q = @import("std").mem.zeroInit(AVRational, .{ @as(c_int, 1), AV_TIME_BASE });
pub const AVUTIL_COMMON_H = "";
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H = "";
pub const __wasilibc___include_inttypes_h = "";
pub const __need_wchar_t = "";
pub const PRId16 = __INT16_FMTd__;
pub const PRIi16 = __INT16_FMTi__;
pub const PRId32 = __INT32_FMTd__;
pub const PRIi32 = __INT32_FMTi__;
pub const PRId64 = __INT64_FMTd__;
pub const PRIi64 = __INT64_FMTi__;
pub const PRId8 = __INT8_FMTd__;
pub const PRIi8 = __INT8_FMTi__;
pub const PRIdMAX = @compileError("unable to translate macro: undefined identifier `__INTMAX_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:30:9
pub const PRIiMAX = @compileError("unable to translate macro: undefined identifier `__INTMAX_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:31:9
pub const PRIdPTR = @compileError("unable to translate macro: undefined identifier `__INTPTR_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:32:9
pub const PRIiPTR = @compileError("unable to translate macro: undefined identifier `__INTPTR_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:33:9
pub const PRIdFAST16 = @compileError("unable to translate macro: undefined identifier `__INT_FAST16_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:34:9
pub const PRIiFAST16 = @compileError("unable to translate macro: undefined identifier `__INT_FAST16_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:35:9
pub const PRIdFAST32 = @compileError("unable to translate macro: undefined identifier `__INT_FAST32_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:36:9
pub const PRIiFAST32 = @compileError("unable to translate macro: undefined identifier `__INT_FAST32_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:37:9
pub const PRIdFAST64 = @compileError("unable to translate macro: undefined identifier `__INT_FAST64_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:38:9
pub const PRIiFAST64 = @compileError("unable to translate macro: undefined identifier `__INT_FAST64_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:39:9
pub const PRIdFAST8 = @compileError("unable to translate macro: undefined identifier `__INT_FAST8_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:40:9
pub const PRIiFAST8 = @compileError("unable to translate macro: undefined identifier `__INT_FAST8_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:41:9
pub const PRIdLEAST16 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST16_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:42:9
pub const PRIiLEAST16 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST16_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:43:9
pub const PRIdLEAST32 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST32_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:44:9
pub const PRIiLEAST32 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST32_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:45:9
pub const PRIdLEAST64 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST64_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:46:9
pub const PRIiLEAST64 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST64_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:47:9
pub const PRIdLEAST8 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST8_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:48:9
pub const PRIiLEAST8 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST8_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:49:9
pub const PRIX16 = __UINT16_FMTX__;
pub const PRIo16 = __UINT16_FMTo__;
pub const PRIu16 = __UINT16_FMTu__;
pub const PRIx16 = __UINT16_FMTx__;
pub const PRIX32 = __UINT32_FMTX__;
pub const PRIo32 = __UINT32_FMTo__;
pub const PRIu32 = __UINT32_FMTu__;
pub const PRIx32 = __UINT32_FMTx__;
pub const PRIX64 = __UINT64_FMTX__;
pub const PRIo64 = __UINT64_FMTo__;
pub const PRIu64 = __UINT64_FMTu__;
pub const PRIx64 = __UINT64_FMTx__;
pub const PRIX8 = __UINT8_FMTX__;
pub const PRIo8 = __UINT8_FMTo__;
pub const PRIu8 = __UINT8_FMTu__;
pub const PRIx8 = __UINT8_FMTx__;
pub const PRIXMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:66:9
pub const PRIoMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:67:9
pub const PRIuMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:68:9
pub const PRIxMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:69:9
pub const PRIXPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:70:9
pub const PRIoPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:71:9
pub const PRIuPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:72:9
pub const PRIxPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:73:9
pub const PRIXFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:74:9
pub const PRIoFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:75:9
pub const PRIuFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:76:9
pub const PRIxFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:77:9
pub const PRIXFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:78:9
pub const PRIoFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:79:9
pub const PRIuFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:80:9
pub const PRIxFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:81:9
pub const PRIXFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:82:9
pub const PRIoFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:83:9
pub const PRIuFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:84:9
pub const PRIxFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:85:9
pub const PRIXFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:86:9
pub const PRIoFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:87:9
pub const PRIuFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:88:9
pub const PRIxFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:89:9
pub const PRIXLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:90:9
pub const PRIoLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:91:9
pub const PRIuLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:92:9
pub const PRIxLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:93:9
pub const PRIXLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:94:9
pub const PRIoLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:95:9
pub const PRIuLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:96:9
pub const PRIxLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:97:9
pub const PRIXLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:98:9
pub const PRIoLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:99:9
pub const PRIuLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:100:9
pub const PRIxLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:101:9
pub const PRIXLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTX__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:102:9
pub const PRIoLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:103:9
pub const PRIuLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:104:9
pub const PRIxLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:105:9
pub const SCNd16 = __INT16_FMTd__;
pub const SCNi16 = __INT16_FMTi__;
pub const SCNd32 = __INT32_FMTd__;
pub const SCNi32 = __INT32_FMTi__;
pub const SCNd64 = __INT64_FMTd__;
pub const SCNi64 = __INT64_FMTi__;
pub const SCNd8 = __INT8_FMTd__;
pub const SCNi8 = __INT8_FMTi__;
pub const SCNdMAX = @compileError("unable to translate macro: undefined identifier `__INTMAX_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:115:9
pub const SCNiMAX = @compileError("unable to translate macro: undefined identifier `__INTMAX_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:116:9
pub const SCNdPTR = @compileError("unable to translate macro: undefined identifier `__INTPTR_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:117:9
pub const SCNiPTR = @compileError("unable to translate macro: undefined identifier `__INTPTR_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:118:9
pub const SCNdFAST16 = @compileError("unable to translate macro: undefined identifier `__INT_FAST16_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:119:9
pub const SCNiFAST16 = @compileError("unable to translate macro: undefined identifier `__INT_FAST16_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:120:9
pub const SCNdFAST32 = @compileError("unable to translate macro: undefined identifier `__INT_FAST32_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:121:9
pub const SCNiFAST32 = @compileError("unable to translate macro: undefined identifier `__INT_FAST32_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:122:9
pub const SCNdFAST64 = @compileError("unable to translate macro: undefined identifier `__INT_FAST64_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:123:9
pub const SCNiFAST64 = @compileError("unable to translate macro: undefined identifier `__INT_FAST64_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:124:9
pub const SCNdFAST8 = @compileError("unable to translate macro: undefined identifier `__INT_FAST8_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:125:9
pub const SCNiFAST8 = @compileError("unable to translate macro: undefined identifier `__INT_FAST8_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:126:9
pub const SCNdLEAST16 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST16_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:127:9
pub const SCNiLEAST16 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST16_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:128:9
pub const SCNdLEAST32 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST32_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:129:9
pub const SCNiLEAST32 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST32_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:130:9
pub const SCNdLEAST64 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST64_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:131:9
pub const SCNiLEAST64 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST64_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:132:9
pub const SCNdLEAST8 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST8_FMTd__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:133:9
pub const SCNiLEAST8 = @compileError("unable to translate macro: undefined identifier `__INT_LEAST8_FMTi__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:134:9
pub const SCNo16 = __UINT16_FMTo__;
pub const SCNu16 = __UINT16_FMTu__;
pub const SCNx16 = __UINT16_FMTx__;
pub const SCNo32 = __UINT32_FMTo__;
pub const SCNu32 = __UINT32_FMTu__;
pub const SCNx32 = __UINT32_FMTx__;
pub const SCNo64 = __UINT64_FMTo__;
pub const SCNu64 = __UINT64_FMTu__;
pub const SCNx64 = __UINT64_FMTx__;
pub const SCNo8 = __UINT8_FMTo__;
pub const SCNu8 = __UINT8_FMTu__;
pub const SCNx8 = __UINT8_FMTx__;
pub const SCNoMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:147:9
pub const SCNuMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:148:9
pub const SCNxMAX = @compileError("unable to translate macro: undefined identifier `__UINTMAX_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:149:9
pub const SCNoPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:150:9
pub const SCNuPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:151:9
pub const SCNxPTR = @compileError("unable to translate macro: undefined identifier `__UINTPTR_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:152:9
pub const SCNoFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:153:9
pub const SCNuFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:154:9
pub const SCNxFAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST16_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:155:9
pub const SCNoFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:156:9
pub const SCNuFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:157:9
pub const SCNxFAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST32_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:158:9
pub const SCNoFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:159:9
pub const SCNuFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:160:9
pub const SCNxFAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST64_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:161:9
pub const SCNoFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:162:9
pub const SCNuFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:163:9
pub const SCNxFAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_FAST8_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:164:9
pub const SCNoLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:165:9
pub const SCNuLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:166:9
pub const SCNxLEAST16 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST16_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:167:9
pub const SCNoLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:168:9
pub const SCNuLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:169:9
pub const SCNxLEAST32 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST32_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:170:9
pub const SCNoLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:171:9
pub const SCNuLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:172:9
pub const SCNxLEAST64 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST64_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:173:9
pub const SCNoLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTo__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:174:9
pub const SCNuLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTu__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:175:9
pub const SCNxLEAST8 = @compileError("unable to translate macro: undefined identifier `__UINT_LEAST8_FMTx__`");
// sysroot/usr/include/wasm32-wasi/__header_inttypes.h:176:9
pub const _GCC_LIMITS_H_ = "";
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const MB_LEN_MAX = @as(c_int, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LLONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _MATH_H = "";
pub const __NEED_float_t = "";
pub const __NEED_double_t = "";
pub const __DEFINED_float_t = "";
pub const __DEFINED_double_t = "";
pub const NAN = __builtin.nanf("");
pub const INFINITY = __builtin.inff();
pub const HUGE_VALF = INFINITY;
pub const HUGE_VAL = __helpers.cast(f64, INFINITY);
pub const HUGE_VALL = @compileError("unable to translate: TODO long double");
// sysroot/usr/include/wasm32-wasi/math.h:24:9
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = @as(c_int, 2);
pub const FP_ILOGBNAN = -@as(c_int, 1) - __helpers.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const FP_ILOGB0 = FP_ILOGBNAN;
pub const FP_NAN = @as(c_int, 0);
pub const FP_INFINITE = @as(c_int, 1);
pub const FP_ZERO = @as(c_int, 2);
pub const FP_SUBNORMAL = @as(c_int, 3);
pub const FP_NORMAL = @as(c_int, 4);
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`");
// sysroot/usr/include/wasm32-wasi/math.h:136:9
pub inline fn isinf(x: anytype) @TypeOf(__builtin.isinf(x)) {
    _ = &x;
    return __builtin.isinf(x);
}
pub inline fn isnan(x: anytype) @TypeOf(__builtin.isnan(x)) {
    _ = &x;
    return __builtin.isnan(x);
}
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`");
// sysroot/usr/include/wasm32-wasi/math.h:141:9
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`");
// sysroot/usr/include/wasm32-wasi/math.h:142:9
pub inline fn signbit(x: anytype) @TypeOf(__builtin.signbit(x)) {
    _ = &x;
    return __builtin.signbit(x);
}
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`");
// sysroot/usr/include/wasm32-wasi/math.h:144:9
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`");
// sysroot/usr/include/wasm32-wasi/math.h:145:9
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`");
// sysroot/usr/include/wasm32-wasi/math.h:146:9
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`");
// sysroot/usr/include/wasm32-wasi/math.h:147:9
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`");
// sysroot/usr/include/wasm32-wasi/math.h:148:9
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`");
// sysroot/usr/include/wasm32-wasi/math.h:149:9
pub const MAXFLOAT = @as(f32, 3.40282346638528859812e+38);
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const HUGE = @as(f32, 3.40282346638528859812e+38);
pub const _STDLIB_H = "";
pub const __wasilibc___functions_malloc_h = "";
pub const __wasilibc___header_stdlib_h = "";
pub const __NEED_wchar_t = "";
pub const __DEFINED_wchar_t = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const RAND_MAX = __helpers.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const _ALLOCA_H = "";
pub const _STRING_H = "";
pub const __wasilibc___header_string_h = "";
pub const __wasilibc___functions_memcpy_h = "";
pub const _STRINGS_H = "";
pub const AVUTIL_ATTRIBUTES_H = "";
pub inline fn AV_GCC_VERSION_AT_LEAST(x: anytype, y: anytype) @TypeOf((__GNUC__ > x) or ((__GNUC__ == x) and (__GNUC_MINOR__ >= y))) {
    _ = &x;
    _ = &y;
    return (__GNUC__ > x) or ((__GNUC__ == x) and (__GNUC_MINOR__ >= y));
}
pub inline fn AV_GCC_VERSION_AT_MOST(x: anytype, y: anytype) @TypeOf((__GNUC__ < x) or ((__GNUC__ == x) and (__GNUC_MINOR__ <= y))) {
    _ = &x;
    _ = &y;
    return (__GNUC__ < x) or ((__GNUC__ == x) and (__GNUC_MINOR__ <= y));
}
pub inline fn AV_HAS_BUILTIN(x: anytype) @TypeOf(__builtin.has_builtin(x)) {
    _ = &x;
    return __builtin.has_builtin(x);
}
pub const av_always_inline = @compileError("unable to translate macro: undefined identifier `always_inline`");
// ffmpeg-src/libavutil/attributes.h:45:13
pub const av_extern_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// ffmpeg-src/libavutil/attributes.h:57:13
pub const av_warn_unused_result = @compileError("unable to translate macro: undefined identifier `warn_unused_result`");
// ffmpeg-src/libavutil/attributes.h:62:13
pub const av_noinline = @compileError("unable to translate macro: undefined identifier `noinline`");
// ffmpeg-src/libavutil/attributes.h:68:13
pub const av_pure = @compileError("unable to translate macro: undefined identifier `pure`");
// ffmpeg-src/libavutil/attributes.h:76:13
pub const av_const = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// ffmpeg-src/libavutil/attributes.h:82:13
pub const av_cold = "";
pub const av_flatten = @compileError("unable to translate macro: undefined identifier `flatten`");
// ffmpeg-src/libavutil/attributes.h:94:13
pub const attribute_deprecated = @compileError("unable to translate macro: undefined identifier `deprecated`");
// ffmpeg-src/libavutil/attributes.h:100:13
pub inline fn AV_NOWARN_DEPRECATED(code: anytype) @TypeOf(code) {
    _ = &code;
    return code;
}
pub const av_unused = @compileError("unable to translate macro: undefined identifier `unused`");
// ffmpeg-src/libavutil/attributes.h:131:13
pub const av_used = @compileError("unable to translate macro: undefined identifier `used`");
// ffmpeg-src/libavutil/attributes.h:142:13
pub const av_alias = @compileError("unable to translate macro: undefined identifier `may_alias`");
// ffmpeg-src/libavutil/attributes.h:148:12
pub const av_uninit = @compileError("unable to translate C expr: unexpected token '='");
// ffmpeg-src/libavutil/attributes.h:154:13
pub const av_builtin_constant_p = __builtin.constant_p;
pub const av_printf_format = @compileError("unable to translate macro: undefined identifier `__format__`");
// ffmpeg-src/libavutil/attributes.h:161:13
pub const av_noreturn = @compileError("unable to translate macro: undefined identifier `noreturn`");
// ffmpeg-src/libavutil/attributes.h:168:13
pub const AVUTIL_MACROS_H = "";
pub inline fn AV_STRINGIFY(s: anytype) @TypeOf(AV_TOSTRING(s)) {
    _ = &s;
    return AV_TOSTRING(s);
}
pub const AV_TOSTRING = @compileError("unable to translate C expr: unexpected token ''");
// ffmpeg-src/libavutil/macros.h:37:9
pub const AV_GLUE = @compileError("unable to translate C expr: unexpected token '##'");
// ffmpeg-src/libavutil/macros.h:39:9
pub inline fn AV_JOIN(a: anytype, b: anytype) @TypeOf(AV_GLUE(a, b)) {
    _ = &a;
    _ = &b;
    return AV_GLUE(a, b);
}
pub const AV_PRAGMA = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// ffmpeg-src/libavutil/macros.h:46:9
pub inline fn FFALIGN(x: anytype, a: anytype) @TypeOf(((x + a) - @as(c_int, 1)) & ~(a - @as(c_int, 1))) {
    _ = &x;
    _ = &a;
    return ((x + a) - @as(c_int, 1)) & ~(a - @as(c_int, 1));
}
pub const AVUTIL_VERSION_H = "";
pub inline fn AV_VERSION_INT(a: anytype, b: anytype, c: anytype) @TypeOf(((a << @as(c_int, 16)) | (b << @as(c_int, 8))) | c) {
    _ = &a;
    _ = &b;
    _ = &c;
    return ((a << @as(c_int, 16)) | (b << @as(c_int, 8))) | c;
}
pub const AV_VERSION_DOT = @compileError("unable to translate C expr: unexpected token '##'");
// ffmpeg-src/libavutil/version.h:57:9
pub inline fn AV_VERSION(a: anytype, b: anytype, c: anytype) @TypeOf(AV_VERSION_DOT(a, b, c)) {
    _ = &a;
    _ = &b;
    _ = &c;
    return AV_VERSION_DOT(a, b, c);
}
pub inline fn AV_VERSION_MAJOR(a: anytype) @TypeOf(a >> @as(c_int, 16)) {
    _ = &a;
    return a >> @as(c_int, 16);
}
pub inline fn AV_VERSION_MINOR(a: anytype) @TypeOf((a & __helpers.promoteIntLiteral(c_int, 0x00FF00, .hex)) >> @as(c_int, 8)) {
    _ = &a;
    return (a & __helpers.promoteIntLiteral(c_int, 0x00FF00, .hex)) >> @as(c_int, 8);
}
pub inline fn AV_VERSION_MICRO(a: anytype) @TypeOf(a & @as(c_int, 0xFF)) {
    _ = &a;
    return a & @as(c_int, 0xFF);
}
pub const LIBAVUTIL_VERSION_MAJOR = @as(c_int, 56);
pub const LIBAVUTIL_VERSION_MINOR = @as(c_int, 68);
pub const LIBAVUTIL_VERSION_MICRO = @as(c_int, 100);
pub const LIBAVUTIL_VERSION_INT = AV_VERSION_INT(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
pub const LIBAVUTIL_VERSION = AV_VERSION(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
pub const LIBAVUTIL_BUILD = LIBAVUTIL_VERSION_INT;
pub const LIBAVUTIL_IDENT = "Lavu" ++ AV_STRINGIFY(LIBAVUTIL_VERSION);
pub const FF_API_VAAPI = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_FRAME_QP = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_PLUS1_MINUS1 = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_ERROR_FRAME = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_PKT_PTS = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_CRYPTO_SIZE_T = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_FRAME_GET_SET = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_PSEUDOPAL = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_CHILD_CLASS_NEXT = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_BUFFER_SIZE_T = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 57);
pub const FF_API_D2STR = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 58);
pub const FF_API_DECLARE_ALIGNED = LIBAVUTIL_VERSION_MAJOR < @as(c_int, 58);
pub const AV_HAVE_BIGENDIAN = @as(c_int, 0);
pub const AV_HAVE_FAST_UNALIGNED = @as(c_int, 0);
pub inline fn AV_NE(be: anytype, le: anytype) @TypeOf(le) {
    _ = &be;
    _ = &le;
    return le;
}
pub inline fn RSHIFT(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, a > @as(c_int, 0))) (a + ((@as(c_int, 1) << b) >> @as(c_int, 1))) >> b else ((a + ((@as(c_int, 1) << b) >> @as(c_int, 1))) - @as(c_int, 1)) >> b) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, a > @as(c_int, 0))) (a + ((@as(c_int, 1) << b) >> @as(c_int, 1))) >> b else ((a + ((@as(c_int, 1) << b) >> @as(c_int, 1))) - @as(c_int, 1)) >> b;
}
pub inline fn ROUNDED_DIV(a: anytype, b: anytype) @TypeOf(__helpers.div(if (__helpers.cast(bool, a >= @as(c_int, 0))) a + (b >> @as(c_int, 1)) else a - (b >> @as(c_int, 1)), b)) {
    _ = &a;
    _ = &b;
    return __helpers.div(if (__helpers.cast(bool, a >= @as(c_int, 0))) a + (b >> @as(c_int, 1)) else a - (b >> @as(c_int, 1)), b);
}
pub inline fn AV_CEIL_RSHIFT(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, !(av_builtin_constant_p(b) != 0))) -(-a >> b) else ((a + (@as(c_int, 1) << b)) - @as(c_int, 1)) >> b) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, !(av_builtin_constant_p(b) != 0))) -(-a >> b) else ((a + (@as(c_int, 1) << b)) - @as(c_int, 1)) >> b;
}
pub const FF_CEIL_RSHIFT = AV_CEIL_RSHIFT;
pub inline fn FFUDIV(a: anytype, b: anytype) @TypeOf(__helpers.div(if (__helpers.cast(bool, a > @as(c_int, 0))) a else (a - b) + @as(c_int, 1), b)) {
    _ = &a;
    _ = &b;
    return __helpers.div(if (__helpers.cast(bool, a > @as(c_int, 0))) a else (a - b) + @as(c_int, 1), b);
}
pub inline fn FFUMOD(a: anytype, b: anytype) @TypeOf(a - (b * FFUDIV(a, b))) {
    _ = &a;
    _ = &b;
    return a - (b * FFUDIV(a, b));
}
pub inline fn FFABS(a: anytype) @TypeOf(if (__helpers.cast(bool, a >= @as(c_int, 0))) a else -a) {
    _ = &a;
    return if (__helpers.cast(bool, a >= @as(c_int, 0))) a else -a;
}
pub inline fn FFSIGN(a: anytype) @TypeOf(if (__helpers.cast(bool, a > @as(c_int, 0))) @as(c_int, 1) else -@as(c_int, 1)) {
    _ = &a;
    return if (__helpers.cast(bool, a > @as(c_int, 0))) @as(c_int, 1) else -@as(c_int, 1);
}
pub inline fn FFNABS(a: anytype) @TypeOf(if (__helpers.cast(bool, a <= @as(c_int, 0))) a else -a) {
    _ = &a;
    return if (__helpers.cast(bool, a <= @as(c_int, 0))) a else -a;
}
pub inline fn FFABSU(a: anytype) @TypeOf(if (__helpers.cast(bool, a <= @as(c_int, 0))) -__helpers.cast(c_uint, a) else __helpers.cast(c_uint, a)) {
    _ = &a;
    return if (__helpers.cast(bool, a <= @as(c_int, 0))) -__helpers.cast(c_uint, a) else __helpers.cast(c_uint, a);
}
pub inline fn FFABS64U(a: anytype) @TypeOf(if (__helpers.cast(bool, a <= @as(c_int, 0))) -__helpers.cast(u64, a) else __helpers.cast(u64, a)) {
    _ = &a;
    return if (__helpers.cast(bool, a <= @as(c_int, 0))) -__helpers.cast(u64, a) else __helpers.cast(u64, a);
}
pub inline fn FFDIFFSIGN(x: anytype, y: anytype) @TypeOf(@intFromBool(x > y) - @intFromBool(x < y)) {
    _ = &x;
    _ = &y;
    return @intFromBool(x > y) - @intFromBool(x < y);
}
pub inline fn FFMAX(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, a > b)) a else b) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, a > b)) a else b;
}
pub inline fn FFMAX3(a: anytype, b: anytype, c: anytype) @TypeOf(FFMAX(FFMAX(a, b), c)) {
    _ = &a;
    _ = &b;
    _ = &c;
    return FFMAX(FFMAX(a, b), c);
}
pub inline fn FFMIN(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, a > b)) b else a) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, a > b)) b else a;
}
pub inline fn FFMIN3(a: anytype, b: anytype, c: anytype) @TypeOf(FFMIN(FFMIN(a, b), c)) {
    _ = &a;
    _ = &b;
    _ = &c;
    return FFMIN(FFMIN(a, b), c);
}
pub const FFSWAP = @compileError("unable to translate macro: undefined identifier `SWAP_tmp`");
// ffmpeg-src/libavutil/common.h:108:9
pub inline fn FF_ARRAY_ELEMS(a: anytype) @TypeOf(__helpers.div(__helpers.sizeof(a), __helpers.sizeof(a[@as(usize, @intCast(@as(c_int, 0)))]))) {
    _ = &a;
    return __helpers.div(__helpers.sizeof(a), __helpers.sizeof(a[@as(usize, @intCast(@as(c_int, 0)))]));
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
pub inline fn MKTAG(a: anytype, b: anytype, c: anytype, d: anytype) @TypeOf(((a | (b << @as(c_int, 8))) | (c << @as(c_int, 16))) | (__helpers.cast(c_uint, d) << @as(c_int, 24))) {
    _ = &a;
    _ = &b;
    _ = &c;
    _ = &d;
    return ((a | (b << @as(c_int, 8))) | (c << @as(c_int, 16))) | (__helpers.cast(c_uint, d) << @as(c_int, 24));
}
pub inline fn MKBETAG(a: anytype, b: anytype, c: anytype, d: anytype) @TypeOf(((d | (c << @as(c_int, 8))) | (b << @as(c_int, 16))) | (__helpers.cast(c_uint, a) << @as(c_int, 24))) {
    _ = &a;
    _ = &b;
    _ = &c;
    _ = &d;
    return ((d | (c << @as(c_int, 8))) | (b << @as(c_int, 16))) | (__helpers.cast(c_uint, a) << @as(c_int, 24));
}
pub const GET_UTF8 = @compileError("unable to translate macro: undefined identifier `top`");
// ffmpeg-src/libavutil/common.h:499:9
pub const GET_UTF16 = @compileError("unable to translate macro: undefined identifier `hi`");
// ffmpeg-src/libavutil/common.h:524:9
pub const PUT_UTF8 = @compileError("unable to translate macro: undefined identifier `bytes`");
// ffmpeg-src/libavutil/common.h:552:9
pub const PUT_UTF16 = @compileError("unable to translate macro: undefined identifier `in`");
// ffmpeg-src/libavutil/common.h:586:9
pub const AVUTIL_MEM_H = "";
pub const AVUTIL_ERROR_H = "";
pub inline fn AVERROR(e: anytype) @TypeOf(-e) {
    _ = &e;
    return -e;
}
pub inline fn AVUNERROR(e: anytype) @TypeOf(-e) {
    _ = &e;
    return -e;
}
pub inline fn FFERRTAG(a: anytype, b: anytype, c: anytype, d: anytype) @TypeOf(-__helpers.cast(c_int, MKTAG(a, b, c, d))) {
    _ = &a;
    _ = &b;
    _ = &c;
    _ = &d;
    return -__helpers.cast(c_int, MKTAG(a, b, c, d));
}
pub const AVERROR_BSF_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'B', 'S', 'F');
pub const AVERROR_BUG = FFERRTAG('B', 'U', 'G', '!');
pub const AVERROR_BUFFER_TOO_SMALL = FFERRTAG('B', 'U', 'F', 'S');
pub const AVERROR_DECODER_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'D', 'E', 'C');
pub const AVERROR_DEMUXER_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'D', 'E', 'M');
pub const AVERROR_ENCODER_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'E', 'N', 'C');
pub const AVERROR_EOF = FFERRTAG('E', 'O', 'F', ' ');
pub const AVERROR_EXIT = FFERRTAG('E', 'X', 'I', 'T');
pub const AVERROR_EXTERNAL = FFERRTAG('E', 'X', 'T', ' ');
pub const AVERROR_FILTER_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'F', 'I', 'L');
pub const AVERROR_INVALIDDATA = FFERRTAG('I', 'N', 'D', 'A');
pub const AVERROR_MUXER_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'M', 'U', 'X');
pub const AVERROR_OPTION_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'O', 'P', 'T');
pub const AVERROR_PATCHWELCOME = FFERRTAG('P', 'A', 'W', 'E');
pub const AVERROR_PROTOCOL_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'P', 'R', 'O');
pub const AVERROR_STREAM_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), 'S', 'T', 'R');
pub const AVERROR_BUG2 = FFERRTAG('B', 'U', 'G', ' ');
pub const AVERROR_UNKNOWN = FFERRTAG('U', 'N', 'K', 'N');
pub const AVERROR_EXPERIMENTAL = -__helpers.promoteIntLiteral(c_int, 0x2bb2afa8, .hex);
pub const AVERROR_INPUT_CHANGED = -__helpers.promoteIntLiteral(c_int, 0x636e6701, .hex);
pub const AVERROR_OUTPUT_CHANGED = -__helpers.promoteIntLiteral(c_int, 0x636e6702, .hex);
pub const AVERROR_HTTP_BAD_REQUEST = FFERRTAG(@as(c_int, 0xF8), '4', '0', '0');
pub const AVERROR_HTTP_UNAUTHORIZED = FFERRTAG(@as(c_int, 0xF8), '4', '0', '1');
pub const AVERROR_HTTP_FORBIDDEN = FFERRTAG(@as(c_int, 0xF8), '4', '0', '3');
pub const AVERROR_HTTP_NOT_FOUND = FFERRTAG(@as(c_int, 0xF8), '4', '0', '4');
pub const AVERROR_HTTP_OTHER_4XX = FFERRTAG(@as(c_int, 0xF8), '4', 'X', 'X');
pub const AVERROR_HTTP_SERVER_ERROR = FFERRTAG(@as(c_int, 0xF8), '5', 'X', 'X');
pub const AV_ERROR_MAX_STRING_SIZE = @as(c_int, 64);
pub const av_err2str = @compileError("unable to translate C expr: expected ')' instead got '['");
// ffmpeg-src/libavutil/error.h:119:9
pub const DECLARE_ALIGNED = @compileError("unable to translate macro: undefined identifier `aligned`");
// ffmpeg-src/libavutil/mem.h:117:13
pub const DECLARE_ASM_ALIGNED = @compileError("unable to translate macro: undefined identifier `aligned`");
// ffmpeg-src/libavutil/mem.h:118:13
pub const DECLARE_ASM_CONST = @compileError("unable to translate macro: undefined identifier `aligned`");
// ffmpeg-src/libavutil/mem.h:119:13
pub const av_malloc_attrib = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// ffmpeg-src/libavutil/mem.h:152:13
pub inline fn av_alloc_size() void {
    return;
}
pub const AVUTIL_RATIONAL_H = "";
pub const AVUTIL_MATHEMATICS_H = "";
pub const AVUTIL_INTFLOAT_H = "";
pub const M_LOG2_10 = @as(f64, 3.32192809488736234787);
pub const M_PHI = @as(f64, 1.61803398874989484820);
pub const AVUTIL_LOG_H = "";
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /opt/zig/lib/compiler/aro/include/stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /opt/zig/lib/compiler/aro/include/stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`");
// /opt/zig/lib/compiler/aro/include/stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /opt/zig/lib/compiler/aro/include/stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /opt/zig/lib/compiler/aro/include/stdarg.h:22:9
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub inline fn AV_IS_INPUT_DEVICE(category: anytype) @TypeOf(((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_INPUT)) {
    _ = &category;
    return ((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_INPUT);
}
pub inline fn AV_IS_OUTPUT_DEVICE(category: anytype) @TypeOf(((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_OUTPUT)) {
    _ = &category;
    return ((category == AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT) or (category == AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)) or (category == AV_CLASS_CATEGORY_DEVICE_OUTPUT);
}
pub const AV_LOG_QUIET = -@as(c_int, 8);
pub const AV_LOG_PANIC = @as(c_int, 0);
pub const AV_LOG_FATAL = @as(c_int, 8);
pub const AV_LOG_ERROR = @as(c_int, 16);
pub const AV_LOG_WARNING = @as(c_int, 24);
pub const AV_LOG_INFO = @as(c_int, 32);
pub const AV_LOG_VERBOSE = @as(c_int, 40);
pub const AV_LOG_DEBUG = @as(c_int, 48);
pub const AV_LOG_TRACE = @as(c_int, 56);
pub const AV_LOG_MAX_OFFSET = AV_LOG_TRACE - AV_LOG_QUIET;
pub inline fn AV_LOG_C(x: anytype) @TypeOf(x << @as(c_int, 8)) {
    _ = &x;
    return x << @as(c_int, 8);
}
pub const AV_LOG_SKIP_REPEATED = @as(c_int, 1);
pub const AV_LOG_PRINT_LEVEL = @as(c_int, 2);
pub const AVUTIL_PIXFMT_H = "";
pub const AVPALETTE_SIZE = @as(c_int, 1024);
pub const AVPALETTE_COUNT = @as(c_int, 256);
pub const AV_PIX_FMT_NE = @compileError("unable to translate macro: undefined identifier `AV_PIX_FMT_`");
// ffmpeg-src/libavutil/pixfmt.h:369:12
pub const AV_PIX_FMT_RGB32 = @compileError("unable to translate macro: undefined identifier `ARGB`");
// ffmpeg-src/libavutil/pixfmt.h:372:9
pub const AV_PIX_FMT_RGB32_1 = @compileError("unable to translate macro: undefined identifier `RGBA`");
// ffmpeg-src/libavutil/pixfmt.h:373:9
pub const AV_PIX_FMT_BGR32 = @compileError("unable to translate macro: undefined identifier `ABGR`");
// ffmpeg-src/libavutil/pixfmt.h:374:9
pub const AV_PIX_FMT_BGR32_1 = @compileError("unable to translate macro: undefined identifier `BGRA`");
// ffmpeg-src/libavutil/pixfmt.h:375:9
pub const AV_PIX_FMT_0RGB32 = @compileError("unable to translate macro: undefined identifier `BGR0`");
// ffmpeg-src/libavutil/pixfmt.h:376:9
pub const AV_PIX_FMT_0BGR32 = @compileError("unable to translate macro: undefined identifier `RGB0`");
// ffmpeg-src/libavutil/pixfmt.h:377:9
pub const AV_PIX_FMT_GRAY9 = @compileError("unable to translate macro: undefined identifier `GRAY9BE`");
// ffmpeg-src/libavutil/pixfmt.h:379:9
pub const AV_PIX_FMT_GRAY10 = @compileError("unable to translate macro: undefined identifier `GRAY10BE`");
// ffmpeg-src/libavutil/pixfmt.h:380:9
pub const AV_PIX_FMT_GRAY12 = @compileError("unable to translate macro: undefined identifier `GRAY12BE`");
// ffmpeg-src/libavutil/pixfmt.h:381:9
pub const AV_PIX_FMT_GRAY14 = @compileError("unable to translate macro: undefined identifier `GRAY14BE`");
// ffmpeg-src/libavutil/pixfmt.h:382:9
pub const AV_PIX_FMT_GRAY16 = @compileError("unable to translate macro: undefined identifier `GRAY16BE`");
// ffmpeg-src/libavutil/pixfmt.h:383:9
pub const AV_PIX_FMT_YA16 = @compileError("unable to translate macro: undefined identifier `YA16BE`");
// ffmpeg-src/libavutil/pixfmt.h:384:9
pub const AV_PIX_FMT_RGB48 = @compileError("unable to translate macro: undefined identifier `RGB48BE`");
// ffmpeg-src/libavutil/pixfmt.h:385:9
pub const AV_PIX_FMT_RGB565 = @compileError("unable to translate macro: undefined identifier `RGB565BE`");
// ffmpeg-src/libavutil/pixfmt.h:386:9
pub const AV_PIX_FMT_RGB555 = @compileError("unable to translate macro: undefined identifier `RGB555BE`");
// ffmpeg-src/libavutil/pixfmt.h:387:9
pub const AV_PIX_FMT_RGB444 = @compileError("unable to translate macro: undefined identifier `RGB444BE`");
// ffmpeg-src/libavutil/pixfmt.h:388:9
pub const AV_PIX_FMT_RGBA64 = @compileError("unable to translate macro: undefined identifier `RGBA64BE`");
// ffmpeg-src/libavutil/pixfmt.h:389:9
pub const AV_PIX_FMT_BGR48 = @compileError("unable to translate macro: undefined identifier `BGR48BE`");
// ffmpeg-src/libavutil/pixfmt.h:390:9
pub const AV_PIX_FMT_BGR565 = @compileError("unable to translate macro: undefined identifier `BGR565BE`");
// ffmpeg-src/libavutil/pixfmt.h:391:9
pub const AV_PIX_FMT_BGR555 = @compileError("unable to translate macro: undefined identifier `BGR555BE`");
// ffmpeg-src/libavutil/pixfmt.h:392:9
pub const AV_PIX_FMT_BGR444 = @compileError("unable to translate macro: undefined identifier `BGR444BE`");
// ffmpeg-src/libavutil/pixfmt.h:393:9
pub const AV_PIX_FMT_BGRA64 = @compileError("unable to translate macro: undefined identifier `BGRA64BE`");
// ffmpeg-src/libavutil/pixfmt.h:394:9
pub const AV_PIX_FMT_YUV420P9 = @compileError("unable to translate macro: undefined identifier `YUV420P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:396:9
pub const AV_PIX_FMT_YUV422P9 = @compileError("unable to translate macro: undefined identifier `YUV422P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:397:9
pub const AV_PIX_FMT_YUV444P9 = @compileError("unable to translate macro: undefined identifier `YUV444P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:398:9
pub const AV_PIX_FMT_YUV420P10 = @compileError("unable to translate macro: undefined identifier `YUV420P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:399:9
pub const AV_PIX_FMT_YUV422P10 = @compileError("unable to translate macro: undefined identifier `YUV422P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:400:9
pub const AV_PIX_FMT_YUV440P10 = @compileError("unable to translate macro: undefined identifier `YUV440P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:401:9
pub const AV_PIX_FMT_YUV444P10 = @compileError("unable to translate macro: undefined identifier `YUV444P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:402:9
pub const AV_PIX_FMT_YUV420P12 = @compileError("unable to translate macro: undefined identifier `YUV420P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:403:9
pub const AV_PIX_FMT_YUV422P12 = @compileError("unable to translate macro: undefined identifier `YUV422P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:404:9
pub const AV_PIX_FMT_YUV440P12 = @compileError("unable to translate macro: undefined identifier `YUV440P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:405:9
pub const AV_PIX_FMT_YUV444P12 = @compileError("unable to translate macro: undefined identifier `YUV444P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:406:9
pub const AV_PIX_FMT_YUV420P14 = @compileError("unable to translate macro: undefined identifier `YUV420P14BE`");
// ffmpeg-src/libavutil/pixfmt.h:407:9
pub const AV_PIX_FMT_YUV422P14 = @compileError("unable to translate macro: undefined identifier `YUV422P14BE`");
// ffmpeg-src/libavutil/pixfmt.h:408:9
pub const AV_PIX_FMT_YUV444P14 = @compileError("unable to translate macro: undefined identifier `YUV444P14BE`");
// ffmpeg-src/libavutil/pixfmt.h:409:9
pub const AV_PIX_FMT_YUV420P16 = @compileError("unable to translate macro: undefined identifier `YUV420P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:410:9
pub const AV_PIX_FMT_YUV422P16 = @compileError("unable to translate macro: undefined identifier `YUV422P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:411:9
pub const AV_PIX_FMT_YUV444P16 = @compileError("unable to translate macro: undefined identifier `YUV444P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:412:9
pub const AV_PIX_FMT_GBRP9 = @compileError("unable to translate macro: undefined identifier `GBRP9BE`");
// ffmpeg-src/libavutil/pixfmt.h:414:9
pub const AV_PIX_FMT_GBRP10 = @compileError("unable to translate macro: undefined identifier `GBRP10BE`");
// ffmpeg-src/libavutil/pixfmt.h:415:9
pub const AV_PIX_FMT_GBRP12 = @compileError("unable to translate macro: undefined identifier `GBRP12BE`");
// ffmpeg-src/libavutil/pixfmt.h:416:9
pub const AV_PIX_FMT_GBRP14 = @compileError("unable to translate macro: undefined identifier `GBRP14BE`");
// ffmpeg-src/libavutil/pixfmt.h:417:9
pub const AV_PIX_FMT_GBRP16 = @compileError("unable to translate macro: undefined identifier `GBRP16BE`");
// ffmpeg-src/libavutil/pixfmt.h:418:9
pub const AV_PIX_FMT_GBRAP10 = @compileError("unable to translate macro: undefined identifier `GBRAP10BE`");
// ffmpeg-src/libavutil/pixfmt.h:419:9
pub const AV_PIX_FMT_GBRAP12 = @compileError("unable to translate macro: undefined identifier `GBRAP12BE`");
// ffmpeg-src/libavutil/pixfmt.h:420:9
pub const AV_PIX_FMT_GBRAP16 = @compileError("unable to translate macro: undefined identifier `GBRAP16BE`");
// ffmpeg-src/libavutil/pixfmt.h:421:9
pub const AV_PIX_FMT_BAYER_BGGR16 = @compileError("unable to translate macro: undefined identifier `BAYER_BGGR16BE`");
// ffmpeg-src/libavutil/pixfmt.h:423:9
pub const AV_PIX_FMT_BAYER_RGGB16 = @compileError("unable to translate macro: undefined identifier `BAYER_RGGB16BE`");
// ffmpeg-src/libavutil/pixfmt.h:424:9
pub const AV_PIX_FMT_BAYER_GBRG16 = @compileError("unable to translate macro: undefined identifier `BAYER_GBRG16BE`");
// ffmpeg-src/libavutil/pixfmt.h:425:9
pub const AV_PIX_FMT_BAYER_GRBG16 = @compileError("unable to translate macro: undefined identifier `BAYER_GRBG16BE`");
// ffmpeg-src/libavutil/pixfmt.h:426:9
pub const AV_PIX_FMT_GBRPF32 = @compileError("unable to translate macro: undefined identifier `GBRPF32BE`");
// ffmpeg-src/libavutil/pixfmt.h:428:9
pub const AV_PIX_FMT_GBRAPF32 = @compileError("unable to translate macro: undefined identifier `GBRAPF32BE`");
// ffmpeg-src/libavutil/pixfmt.h:429:9
pub const AV_PIX_FMT_GRAYF32 = @compileError("unable to translate macro: undefined identifier `GRAYF32BE`");
// ffmpeg-src/libavutil/pixfmt.h:431:9
pub const AV_PIX_FMT_YUVA420P9 = @compileError("unable to translate macro: undefined identifier `YUVA420P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:433:9
pub const AV_PIX_FMT_YUVA422P9 = @compileError("unable to translate macro: undefined identifier `YUVA422P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:434:9
pub const AV_PIX_FMT_YUVA444P9 = @compileError("unable to translate macro: undefined identifier `YUVA444P9BE`");
// ffmpeg-src/libavutil/pixfmt.h:435:9
pub const AV_PIX_FMT_YUVA420P10 = @compileError("unable to translate macro: undefined identifier `YUVA420P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:436:9
pub const AV_PIX_FMT_YUVA422P10 = @compileError("unable to translate macro: undefined identifier `YUVA422P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:437:9
pub const AV_PIX_FMT_YUVA444P10 = @compileError("unable to translate macro: undefined identifier `YUVA444P10BE`");
// ffmpeg-src/libavutil/pixfmt.h:438:9
pub const AV_PIX_FMT_YUVA422P12 = @compileError("unable to translate macro: undefined identifier `YUVA422P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:439:9
pub const AV_PIX_FMT_YUVA444P12 = @compileError("unable to translate macro: undefined identifier `YUVA444P12BE`");
// ffmpeg-src/libavutil/pixfmt.h:440:9
pub const AV_PIX_FMT_YUVA420P16 = @compileError("unable to translate macro: undefined identifier `YUVA420P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:441:9
pub const AV_PIX_FMT_YUVA422P16 = @compileError("unable to translate macro: undefined identifier `YUVA422P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:442:9
pub const AV_PIX_FMT_YUVA444P16 = @compileError("unable to translate macro: undefined identifier `YUVA444P16BE`");
// ffmpeg-src/libavutil/pixfmt.h:443:9
pub const AV_PIX_FMT_XYZ12 = @compileError("unable to translate macro: undefined identifier `XYZ12BE`");
// ffmpeg-src/libavutil/pixfmt.h:445:9
pub const AV_PIX_FMT_NV20 = @compileError("unable to translate macro: undefined identifier `NV20BE`");
// ffmpeg-src/libavutil/pixfmt.h:446:9
pub const AV_PIX_FMT_AYUV64 = @compileError("unable to translate macro: undefined identifier `AYUV64BE`");
// ffmpeg-src/libavutil/pixfmt.h:447:9
pub const AV_PIX_FMT_P010 = @compileError("unable to translate macro: undefined identifier `P010BE`");
// ffmpeg-src/libavutil/pixfmt.h:448:9
pub const AV_PIX_FMT_P016 = @compileError("unable to translate macro: undefined identifier `P016BE`");
// ffmpeg-src/libavutil/pixfmt.h:449:9
pub const AV_PIX_FMT_Y210 = @compileError("unable to translate macro: undefined identifier `Y210BE`");
// ffmpeg-src/libavutil/pixfmt.h:451:9
pub const AV_PIX_FMT_X2RGB10 = @compileError("unable to translate macro: undefined identifier `X2RGB10BE`");
// ffmpeg-src/libavutil/pixfmt.h:452:9
pub inline fn av_int_list_length(list: anytype, term: anytype) @TypeOf(av_int_list_length_for_size(__helpers.sizeof(list.*), list, term)) {
    _ = &list;
    _ = &term;
    return av_int_list_length_for_size(__helpers.sizeof(list.*), list, term);
}
pub const AV_FOURCC_MAX_STRING_SIZE = @as(c_int, 32);
pub const av_fourcc2str = @compileError("unable to translate C expr: expected ')' instead got '['");
// ffmpeg-src/libavutil/avutil.h:348:9
pub const AVUTIL_BUFFER_H = "";
pub const AV_BUFFER_FLAG_READONLY = @as(c_int, 1) << @as(c_int, 0);
pub const AVUTIL_CPU_H = "";
pub const AV_CPU_FLAG_FORCE = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const AV_CPU_FLAG_MMX = @as(c_int, 0x0001);
pub const AV_CPU_FLAG_MMXEXT = @as(c_int, 0x0002);
pub const AV_CPU_FLAG_MMX2 = @as(c_int, 0x0002);
pub const AV_CPU_FLAG_3DNOW = @as(c_int, 0x0004);
pub const AV_CPU_FLAG_SSE = @as(c_int, 0x0008);
pub const AV_CPU_FLAG_SSE2 = @as(c_int, 0x0010);
pub const AV_CPU_FLAG_SSE2SLOW = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const AV_CPU_FLAG_3DNOWEXT = @as(c_int, 0x0020);
pub const AV_CPU_FLAG_SSE3 = @as(c_int, 0x0040);
pub const AV_CPU_FLAG_SSE3SLOW = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const AV_CPU_FLAG_SSSE3 = @as(c_int, 0x0080);
pub const AV_CPU_FLAG_SSSE3SLOW = __helpers.promoteIntLiteral(c_int, 0x4000000, .hex);
pub const AV_CPU_FLAG_ATOM = __helpers.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const AV_CPU_FLAG_SSE4 = @as(c_int, 0x0100);
pub const AV_CPU_FLAG_SSE42 = @as(c_int, 0x0200);
pub const AV_CPU_FLAG_AESNI = __helpers.promoteIntLiteral(c_int, 0x80000, .hex);
pub const AV_CPU_FLAG_AVX = @as(c_int, 0x4000);
pub const AV_CPU_FLAG_AVXSLOW = __helpers.promoteIntLiteral(c_int, 0x8000000, .hex);
pub const AV_CPU_FLAG_XOP = @as(c_int, 0x0400);
pub const AV_CPU_FLAG_FMA4 = @as(c_int, 0x0800);
pub const AV_CPU_FLAG_CMOV = @as(c_int, 0x1000);
pub const AV_CPU_FLAG_AVX2 = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const AV_CPU_FLAG_FMA3 = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const AV_CPU_FLAG_BMI1 = __helpers.promoteIntLiteral(c_int, 0x20000, .hex);
pub const AV_CPU_FLAG_BMI2 = __helpers.promoteIntLiteral(c_int, 0x40000, .hex);
pub const AV_CPU_FLAG_AVX512 = __helpers.promoteIntLiteral(c_int, 0x100000, .hex);
pub const AV_CPU_FLAG_ALTIVEC = @as(c_int, 0x0001);
pub const AV_CPU_FLAG_VSX = @as(c_int, 0x0002);
pub const AV_CPU_FLAG_POWER8 = @as(c_int, 0x0004);
pub const AV_CPU_FLAG_ARMV5TE = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CPU_FLAG_ARMV6 = @as(c_int, 1) << @as(c_int, 1);
pub const AV_CPU_FLAG_ARMV6T2 = @as(c_int, 1) << @as(c_int, 2);
pub const AV_CPU_FLAG_VFP = @as(c_int, 1) << @as(c_int, 3);
pub const AV_CPU_FLAG_VFPV3 = @as(c_int, 1) << @as(c_int, 4);
pub const AV_CPU_FLAG_NEON = @as(c_int, 1) << @as(c_int, 5);
pub const AV_CPU_FLAG_ARMV8 = @as(c_int, 1) << @as(c_int, 6);
pub const AV_CPU_FLAG_VFP_VM = @as(c_int, 1) << @as(c_int, 7);
pub const AV_CPU_FLAG_SETEND = @as(c_int, 1) << @as(c_int, 16);
pub const AV_CPU_FLAG_MMI = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CPU_FLAG_MSA = @as(c_int, 1) << @as(c_int, 1);
pub const AVUTIL_CHANNEL_LAYOUT_H = "";
pub const AV_CH_FRONT_LEFT = @as(c_int, 0x00000001);
pub const AV_CH_FRONT_RIGHT = @as(c_int, 0x00000002);
pub const AV_CH_FRONT_CENTER = @as(c_int, 0x00000004);
pub const AV_CH_LOW_FREQUENCY = @as(c_int, 0x00000008);
pub const AV_CH_BACK_LEFT = @as(c_int, 0x00000010);
pub const AV_CH_BACK_RIGHT = @as(c_int, 0x00000020);
pub const AV_CH_FRONT_LEFT_OF_CENTER = @as(c_int, 0x00000040);
pub const AV_CH_FRONT_RIGHT_OF_CENTER = @as(c_int, 0x00000080);
pub const AV_CH_BACK_CENTER = @as(c_int, 0x00000100);
pub const AV_CH_SIDE_LEFT = @as(c_int, 0x00000200);
pub const AV_CH_SIDE_RIGHT = @as(c_int, 0x00000400);
pub const AV_CH_TOP_CENTER = @as(c_int, 0x00000800);
pub const AV_CH_TOP_FRONT_LEFT = @as(c_int, 0x00001000);
pub const AV_CH_TOP_FRONT_CENTER = @as(c_int, 0x00002000);
pub const AV_CH_TOP_FRONT_RIGHT = @as(c_int, 0x00004000);
pub const AV_CH_TOP_BACK_LEFT = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const AV_CH_TOP_BACK_CENTER = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const AV_CH_TOP_BACK_RIGHT = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const AV_CH_STEREO_LEFT = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const AV_CH_STEREO_RIGHT = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
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
pub const AVUTIL_DICT_H = "";
pub const AV_DICT_MATCH_CASE = @as(c_int, 1);
pub const AV_DICT_IGNORE_SUFFIX = @as(c_int, 2);
pub const AV_DICT_DONT_STRDUP_KEY = @as(c_int, 4);
pub const AV_DICT_DONT_STRDUP_VAL = @as(c_int, 8);
pub const AV_DICT_DONT_OVERWRITE = @as(c_int, 16);
pub const AV_DICT_APPEND = @as(c_int, 32);
pub const AV_DICT_MULTIKEY = @as(c_int, 64);
pub const AVUTIL_FRAME_H = "";
pub const AV_NUM_DATA_POINTERS = @as(c_int, 8);
pub const AV_FRAME_FLAG_CORRUPT = @as(c_int, 1) << @as(c_int, 0);
pub const AV_FRAME_FLAG_DISCARD = @as(c_int, 1) << @as(c_int, 2);
pub const FF_DECODE_ERROR_INVALID_BITSTREAM = @as(c_int, 1);
pub const FF_DECODE_ERROR_MISSING_REFERENCE = @as(c_int, 2);
pub const FF_DECODE_ERROR_CONCEALMENT_ACTIVE = @as(c_int, 4);
pub const FF_DECODE_ERROR_DECODE_SLICES = @as(c_int, 8);
pub const AVUTIL_HWCONTEXT_H = "";
pub const AVCODEC_BSF_H = "";
pub const AVCODEC_CODEC_ID_H = "";
pub const AV_CODEC_ID_IFF_BYTERUN1 = AV_CODEC_ID_IFF_ILBM;
pub const AV_CODEC_ID_H265 = AV_CODEC_ID_HEVC;
pub const AV_CODEC_ID_H266 = AV_CODEC_ID_VVC;
pub const AVCODEC_CODEC_PAR_H = "";
pub const AVCODEC_PACKET_H = "";
pub const AVCODEC_VERSION_H = "";
pub const LIBAVCODEC_VERSION_MAJOR = @as(c_int, 58);
pub const LIBAVCODEC_VERSION_MINOR = @as(c_int, 133);
pub const LIBAVCODEC_VERSION_MICRO = @as(c_int, 100);
pub const LIBAVCODEC_VERSION_INT = AV_VERSION_INT(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
pub const LIBAVCODEC_VERSION = AV_VERSION(LIBAVCODEC_VERSION_MAJOR, LIBAVCODEC_VERSION_MINOR, LIBAVCODEC_VERSION_MICRO);
pub const LIBAVCODEC_BUILD = LIBAVCODEC_VERSION_INT;
pub const LIBAVCODEC_IDENT = "Lavc" ++ AV_STRINGIFY(LIBAVCODEC_VERSION);
pub const FF_API_AVCTX_TIMEBASE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_CODED_FRAME = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_SIDEDATA_ONLY_PKT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_VDPAU_PROFILE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_CONVERGENCE_DURATION = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_AVPICTURE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_AVPACKET_OLD_API = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_RTP_CALLBACK = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_VBV_DELAY = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_CODER_TYPE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_STAT_BITS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_PRIVATE_OPT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_ASS_TIMING = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_BSF = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_COPY_CONTEXT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_GET_CONTEXT_DEFAULTS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_NVENC_OLD_NAME = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_STRUCT_VAAPI_CONTEXT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_MERGE_SD_API = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_TAG_STRING = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_GETCHROMA = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_CODEC_GET_SET = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_USER_VISIBLE_AVHWACCEL = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LOCKMGR = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_NEXT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_UNSANITIZED_BITRATES = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OPENH264_SLICE_MODE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OPENH264_CABAC = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_UNUSED_CODEC_CAPS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_AVPRIV_PUT_BITS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_ENCDEC = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_AVCODEC_PIX_FMT = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_MPV_RC_STRATEGY = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_PARSER_CHANGE = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_THREAD_SAFE_CALLBACKS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 60);
pub const FF_API_DEBUG_MV = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 60);
pub const FF_API_GET_FRAME_CLASS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 60);
pub const FF_API_AUTO_THREADS = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 60);
pub const FF_API_INIT_PACKET = LIBAVCODEC_VERSION_MAJOR < @as(c_int, 60);
pub const AV_PKT_DATA_QUALITY_FACTOR = AV_PKT_DATA_QUALITY_STATS;
pub const AV_PKT_FLAG_KEY = @as(c_int, 0x0001);
pub const AV_PKT_FLAG_CORRUPT = @as(c_int, 0x0002);
pub const AV_PKT_FLAG_DISCARD = @as(c_int, 0x0004);
pub const AV_PKT_FLAG_TRUSTED = @as(c_int, 0x0008);
pub const AV_PKT_FLAG_DISPOSABLE = @as(c_int, 0x0010);
pub const AVCODEC_CODEC_H = "";
pub const AV_CODEC_CAP_DRAW_HORIZ_BAND = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CODEC_CAP_DR1 = @as(c_int, 1) << @as(c_int, 1);
pub const AV_CODEC_CAP_TRUNCATED = @as(c_int, 1) << @as(c_int, 3);
pub const AV_CODEC_CAP_DELAY = @as(c_int, 1) << @as(c_int, 5);
pub const AV_CODEC_CAP_SMALL_LAST_FRAME = @as(c_int, 1) << @as(c_int, 6);
pub const AV_CODEC_CAP_SUBFRAMES = @as(c_int, 1) << @as(c_int, 8);
pub const AV_CODEC_CAP_EXPERIMENTAL = @as(c_int, 1) << @as(c_int, 9);
pub const AV_CODEC_CAP_CHANNEL_CONF = @as(c_int, 1) << @as(c_int, 10);
pub const AV_CODEC_CAP_FRAME_THREADS = @as(c_int, 1) << @as(c_int, 12);
pub const AV_CODEC_CAP_SLICE_THREADS = @as(c_int, 1) << @as(c_int, 13);
pub const AV_CODEC_CAP_PARAM_CHANGE = @as(c_int, 1) << @as(c_int, 14);
pub const AV_CODEC_CAP_OTHER_THREADS = @as(c_int, 1) << @as(c_int, 15);
pub const AV_CODEC_CAP_AUTO_THREADS = AV_CODEC_CAP_OTHER_THREADS;
pub const AV_CODEC_CAP_VARIABLE_FRAME_SIZE = @as(c_int, 1) << @as(c_int, 16);
pub const AV_CODEC_CAP_AVOID_PROBING = @as(c_int, 1) << @as(c_int, 17);
pub const AV_CODEC_CAP_INTRA_ONLY = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const AV_CODEC_CAP_LOSSLESS = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const AV_CODEC_CAP_HARDWARE = @as(c_int, 1) << @as(c_int, 18);
pub const AV_CODEC_CAP_HYBRID = @as(c_int, 1) << @as(c_int, 19);
pub const AV_CODEC_CAP_ENCODER_REORDERED_OPAQUE = @as(c_int, 1) << @as(c_int, 20);
pub const AV_CODEC_CAP_ENCODER_FLUSH = @as(c_int, 1) << @as(c_int, 21);
pub const AVCODEC_CODEC_DESC_H = "";
pub const AV_CODEC_PROP_INTRA_ONLY = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CODEC_PROP_LOSSY = @as(c_int, 1) << @as(c_int, 1);
pub const AV_CODEC_PROP_LOSSLESS = @as(c_int, 1) << @as(c_int, 2);
pub const AV_CODEC_PROP_REORDER = @as(c_int, 1) << @as(c_int, 3);
pub const AV_CODEC_PROP_BITMAP_SUB = @as(c_int, 1) << @as(c_int, 16);
pub const AV_CODEC_PROP_TEXT_SUB = @as(c_int, 1) << @as(c_int, 17);
pub const AV_INPUT_BUFFER_PADDING_SIZE = @as(c_int, 64);
pub const AV_INPUT_BUFFER_MIN_SIZE = @as(c_int, 16384);
pub const AV_CODEC_FLAG_UNALIGNED = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CODEC_FLAG_QSCALE = @as(c_int, 1) << @as(c_int, 1);
pub const AV_CODEC_FLAG_4MV = @as(c_int, 1) << @as(c_int, 2);
pub const AV_CODEC_FLAG_OUTPUT_CORRUPT = @as(c_int, 1) << @as(c_int, 3);
pub const AV_CODEC_FLAG_QPEL = @as(c_int, 1) << @as(c_int, 4);
pub const AV_CODEC_FLAG_DROPCHANGED = @as(c_int, 1) << @as(c_int, 5);
pub const AV_CODEC_FLAG_PASS1 = @as(c_int, 1) << @as(c_int, 9);
pub const AV_CODEC_FLAG_PASS2 = @as(c_int, 1) << @as(c_int, 10);
pub const AV_CODEC_FLAG_LOOP_FILTER = @as(c_int, 1) << @as(c_int, 11);
pub const AV_CODEC_FLAG_GRAY = @as(c_int, 1) << @as(c_int, 13);
pub const AV_CODEC_FLAG_PSNR = @as(c_int, 1) << @as(c_int, 15);
pub const AV_CODEC_FLAG_TRUNCATED = @as(c_int, 1) << @as(c_int, 16);
pub const AV_CODEC_FLAG_INTERLACED_DCT = @as(c_int, 1) << @as(c_int, 18);
pub const AV_CODEC_FLAG_LOW_DELAY = @as(c_int, 1) << @as(c_int, 19);
pub const AV_CODEC_FLAG_GLOBAL_HEADER = @as(c_int, 1) << @as(c_int, 22);
pub const AV_CODEC_FLAG_BITEXACT = @as(c_int, 1) << @as(c_int, 23);
pub const AV_CODEC_FLAG_AC_PRED = @as(c_int, 1) << @as(c_int, 24);
pub const AV_CODEC_FLAG_INTERLACED_ME = @as(c_int, 1) << @as(c_int, 29);
pub const AV_CODEC_FLAG_CLOSED_GOP = @as(c_uint, 1) << @as(c_int, 31);
pub const AV_CODEC_FLAG2_FAST = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CODEC_FLAG2_NO_OUTPUT = @as(c_int, 1) << @as(c_int, 2);
pub const AV_CODEC_FLAG2_LOCAL_HEADER = @as(c_int, 1) << @as(c_int, 3);
pub const AV_CODEC_FLAG2_DROP_FRAME_TIMECODE = @as(c_int, 1) << @as(c_int, 13);
pub const AV_CODEC_FLAG2_CHUNKS = @as(c_int, 1) << @as(c_int, 15);
pub const AV_CODEC_FLAG2_IGNORE_CROP = @as(c_int, 1) << @as(c_int, 16);
pub const AV_CODEC_FLAG2_SHOW_ALL = @as(c_int, 1) << @as(c_int, 22);
pub const AV_CODEC_FLAG2_EXPORT_MVS = @as(c_int, 1) << @as(c_int, 28);
pub const AV_CODEC_FLAG2_SKIP_MANUAL = @as(c_int, 1) << @as(c_int, 29);
pub const AV_CODEC_FLAG2_RO_FLUSH_NOOP = @as(c_int, 1) << @as(c_int, 30);
pub const AV_CODEC_EXPORT_DATA_MVS = @as(c_int, 1) << @as(c_int, 0);
pub const AV_CODEC_EXPORT_DATA_PRFT = @as(c_int, 1) << @as(c_int, 1);
pub const AV_CODEC_EXPORT_DATA_VIDEO_ENC_PARAMS = @as(c_int, 1) << @as(c_int, 2);
pub const AV_CODEC_EXPORT_DATA_FILM_GRAIN = @as(c_int, 1) << @as(c_int, 3);
pub const AV_GET_BUFFER_FLAG_REF = @as(c_int, 1) << @as(c_int, 0);
pub const AV_GET_ENCODE_BUFFER_FLAG_REF = @as(c_int, 1) << @as(c_int, 0);
pub const FF_COMPRESSION_DEFAULT = -@as(c_int, 1);
pub const FF_PRED_LEFT = @as(c_int, 0);
pub const FF_PRED_PLANE = @as(c_int, 1);
pub const FF_PRED_MEDIAN = @as(c_int, 2);
pub const FF_CMP_SAD = @as(c_int, 0);
pub const FF_CMP_SSE = @as(c_int, 1);
pub const FF_CMP_SATD = @as(c_int, 2);
pub const FF_CMP_DCT = @as(c_int, 3);
pub const FF_CMP_PSNR = @as(c_int, 4);
pub const FF_CMP_BIT = @as(c_int, 5);
pub const FF_CMP_RD = @as(c_int, 6);
pub const FF_CMP_ZERO = @as(c_int, 7);
pub const FF_CMP_VSAD = @as(c_int, 8);
pub const FF_CMP_VSSE = @as(c_int, 9);
pub const FF_CMP_NSSE = @as(c_int, 10);
pub const FF_CMP_W53 = @as(c_int, 11);
pub const FF_CMP_W97 = @as(c_int, 12);
pub const FF_CMP_DCTMAX = @as(c_int, 13);
pub const FF_CMP_DCT264 = @as(c_int, 14);
pub const FF_CMP_MEDIAN_SAD = @as(c_int, 15);
pub const FF_CMP_CHROMA = @as(c_int, 256);
pub const SLICE_FLAG_CODED_ORDER = @as(c_int, 0x0001);
pub const SLICE_FLAG_ALLOW_FIELD = @as(c_int, 0x0002);
pub const SLICE_FLAG_ALLOW_PLANE = @as(c_int, 0x0004);
pub const FF_MB_DECISION_SIMPLE = @as(c_int, 0);
pub const FF_MB_DECISION_BITS = @as(c_int, 1);
pub const FF_MB_DECISION_RD = @as(c_int, 2);
pub const FF_CODER_TYPE_VLC = @as(c_int, 0);
pub const FF_CODER_TYPE_AC = @as(c_int, 1);
pub const FF_CODER_TYPE_RAW = @as(c_int, 2);
pub const FF_CODER_TYPE_RLE = @as(c_int, 3);
pub const FF_BUG_AUTODETECT = @as(c_int, 1);
pub const FF_BUG_XVID_ILACE = @as(c_int, 4);
pub const FF_BUG_UMP4 = @as(c_int, 8);
pub const FF_BUG_NO_PADDING = @as(c_int, 16);
pub const FF_BUG_AMV = @as(c_int, 32);
pub const FF_BUG_QPEL_CHROMA = @as(c_int, 64);
pub const FF_BUG_STD_QPEL = @as(c_int, 128);
pub const FF_BUG_QPEL_CHROMA2 = @as(c_int, 256);
pub const FF_BUG_DIRECT_BLOCKSIZE = @as(c_int, 512);
pub const FF_BUG_EDGE = @as(c_int, 1024);
pub const FF_BUG_HPEL_CHROMA = @as(c_int, 2048);
pub const FF_BUG_DC_CLIP = @as(c_int, 4096);
pub const FF_BUG_MS = @as(c_int, 8192);
pub const FF_BUG_TRUNCATED = @as(c_int, 16384);
pub const FF_BUG_IEDGE = __helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const FF_COMPLIANCE_VERY_STRICT = @as(c_int, 2);
pub const FF_COMPLIANCE_STRICT = @as(c_int, 1);
pub const FF_COMPLIANCE_NORMAL = @as(c_int, 0);
pub const FF_COMPLIANCE_UNOFFICIAL = -@as(c_int, 1);
pub const FF_COMPLIANCE_EXPERIMENTAL = -@as(c_int, 2);
pub const FF_EC_GUESS_MVS = @as(c_int, 1);
pub const FF_EC_DEBLOCK = @as(c_int, 2);
pub const FF_EC_FAVOR_INTER = @as(c_int, 256);
pub const FF_DEBUG_PICT_INFO = @as(c_int, 1);
pub const FF_DEBUG_RC = @as(c_int, 2);
pub const FF_DEBUG_BITSTREAM = @as(c_int, 4);
pub const FF_DEBUG_MB_TYPE = @as(c_int, 8);
pub const FF_DEBUG_QP = @as(c_int, 16);
pub const FF_DEBUG_DCT_COEFF = @as(c_int, 0x00000040);
pub const FF_DEBUG_SKIP = @as(c_int, 0x00000080);
pub const FF_DEBUG_STARTCODE = @as(c_int, 0x00000100);
pub const FF_DEBUG_ER = @as(c_int, 0x00000400);
pub const FF_DEBUG_MMCO = @as(c_int, 0x00000800);
pub const FF_DEBUG_BUGS = @as(c_int, 0x00001000);
pub const FF_DEBUG_BUFFERS = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const FF_DEBUG_THREADS = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const FF_DEBUG_GREEN_MD = __helpers.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const FF_DEBUG_NOMC = __helpers.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const AV_EF_CRCCHECK = @as(c_int, 1) << @as(c_int, 0);
pub const AV_EF_BITSTREAM = @as(c_int, 1) << @as(c_int, 1);
pub const AV_EF_BUFFER = @as(c_int, 1) << @as(c_int, 2);
pub const AV_EF_EXPLODE = @as(c_int, 1) << @as(c_int, 3);
pub const AV_EF_IGNORE_ERR = @as(c_int, 1) << @as(c_int, 15);
pub const AV_EF_CAREFUL = @as(c_int, 1) << @as(c_int, 16);
pub const AV_EF_COMPLIANT = @as(c_int, 1) << @as(c_int, 17);
pub const AV_EF_AGGRESSIVE = @as(c_int, 1) << @as(c_int, 18);
pub const FF_DCT_AUTO = @as(c_int, 0);
pub const FF_DCT_FASTINT = @as(c_int, 1);
pub const FF_DCT_INT = @as(c_int, 2);
pub const FF_DCT_MMX = @as(c_int, 3);
pub const FF_DCT_ALTIVEC = @as(c_int, 5);
pub const FF_DCT_FAAN = @as(c_int, 6);
pub const FF_IDCT_AUTO = @as(c_int, 0);
pub const FF_IDCT_INT = @as(c_int, 1);
pub const FF_IDCT_SIMPLE = @as(c_int, 2);
pub const FF_IDCT_SIMPLEMMX = @as(c_int, 3);
pub const FF_IDCT_ARM = @as(c_int, 7);
pub const FF_IDCT_ALTIVEC = @as(c_int, 8);
pub const FF_IDCT_SIMPLEARM = @as(c_int, 10);
pub const FF_IDCT_XVID = @as(c_int, 14);
pub const FF_IDCT_SIMPLEARMV5TE = @as(c_int, 16);
pub const FF_IDCT_SIMPLEARMV6 = @as(c_int, 17);
pub const FF_IDCT_FAAN = @as(c_int, 20);
pub const FF_IDCT_SIMPLENEON = @as(c_int, 22);
pub const FF_IDCT_NONE = @as(c_int, 24);
pub const FF_IDCT_SIMPLEAUTO = @as(c_int, 128);
pub const FF_THREAD_FRAME = @as(c_int, 1);
pub const FF_THREAD_SLICE = @as(c_int, 2);
pub const FF_PROFILE_UNKNOWN = -@as(c_int, 99);
pub const FF_PROFILE_RESERVED = -@as(c_int, 100);
pub const FF_PROFILE_AAC_MAIN = @as(c_int, 0);
pub const FF_PROFILE_AAC_LOW = @as(c_int, 1);
pub const FF_PROFILE_AAC_SSR = @as(c_int, 2);
pub const FF_PROFILE_AAC_LTP = @as(c_int, 3);
pub const FF_PROFILE_AAC_HE = @as(c_int, 4);
pub const FF_PROFILE_AAC_HE_V2 = @as(c_int, 28);
pub const FF_PROFILE_AAC_LD = @as(c_int, 22);
pub const FF_PROFILE_AAC_ELD = @as(c_int, 38);
pub const FF_PROFILE_MPEG2_AAC_LOW = @as(c_int, 128);
pub const FF_PROFILE_MPEG2_AAC_HE = @as(c_int, 131);
pub const FF_PROFILE_DNXHD = @as(c_int, 0);
pub const FF_PROFILE_DNXHR_LB = @as(c_int, 1);
pub const FF_PROFILE_DNXHR_SQ = @as(c_int, 2);
pub const FF_PROFILE_DNXHR_HQ = @as(c_int, 3);
pub const FF_PROFILE_DNXHR_HQX = @as(c_int, 4);
pub const FF_PROFILE_DNXHR_444 = @as(c_int, 5);
pub const FF_PROFILE_DTS = @as(c_int, 20);
pub const FF_PROFILE_DTS_ES = @as(c_int, 30);
pub const FF_PROFILE_DTS_96_24 = @as(c_int, 40);
pub const FF_PROFILE_DTS_HD_HRA = @as(c_int, 50);
pub const FF_PROFILE_DTS_HD_MA = @as(c_int, 60);
pub const FF_PROFILE_DTS_EXPRESS = @as(c_int, 70);
pub const FF_PROFILE_MPEG2_422 = @as(c_int, 0);
pub const FF_PROFILE_MPEG2_HIGH = @as(c_int, 1);
pub const FF_PROFILE_MPEG2_SS = @as(c_int, 2);
pub const FF_PROFILE_MPEG2_SNR_SCALABLE = @as(c_int, 3);
pub const FF_PROFILE_MPEG2_MAIN = @as(c_int, 4);
pub const FF_PROFILE_MPEG2_SIMPLE = @as(c_int, 5);
pub const FF_PROFILE_H264_CONSTRAINED = @as(c_int, 1) << @as(c_int, 9);
pub const FF_PROFILE_H264_INTRA = @as(c_int, 1) << @as(c_int, 11);
pub const FF_PROFILE_H264_BASELINE = @as(c_int, 66);
pub const FF_PROFILE_H264_CONSTRAINED_BASELINE = @as(c_int, 66) | FF_PROFILE_H264_CONSTRAINED;
pub const FF_PROFILE_H264_MAIN = @as(c_int, 77);
pub const FF_PROFILE_H264_EXTENDED = @as(c_int, 88);
pub const FF_PROFILE_H264_HIGH = @as(c_int, 100);
pub const FF_PROFILE_H264_HIGH_10 = @as(c_int, 110);
pub const FF_PROFILE_H264_HIGH_10_INTRA = @as(c_int, 110) | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_MULTIVIEW_HIGH = @as(c_int, 118);
pub const FF_PROFILE_H264_HIGH_422 = @as(c_int, 122);
pub const FF_PROFILE_H264_HIGH_422_INTRA = @as(c_int, 122) | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_STEREO_HIGH = @as(c_int, 128);
pub const FF_PROFILE_H264_HIGH_444 = @as(c_int, 144);
pub const FF_PROFILE_H264_HIGH_444_PREDICTIVE = @as(c_int, 244);
pub const FF_PROFILE_H264_HIGH_444_INTRA = @as(c_int, 244) | FF_PROFILE_H264_INTRA;
pub const FF_PROFILE_H264_CAVLC_444 = @as(c_int, 44);
pub const FF_PROFILE_VC1_SIMPLE = @as(c_int, 0);
pub const FF_PROFILE_VC1_MAIN = @as(c_int, 1);
pub const FF_PROFILE_VC1_COMPLEX = @as(c_int, 2);
pub const FF_PROFILE_VC1_ADVANCED = @as(c_int, 3);
pub const FF_PROFILE_MPEG4_SIMPLE = @as(c_int, 0);
pub const FF_PROFILE_MPEG4_SIMPLE_SCALABLE = @as(c_int, 1);
pub const FF_PROFILE_MPEG4_CORE = @as(c_int, 2);
pub const FF_PROFILE_MPEG4_MAIN = @as(c_int, 3);
pub const FF_PROFILE_MPEG4_N_BIT = @as(c_int, 4);
pub const FF_PROFILE_MPEG4_SCALABLE_TEXTURE = @as(c_int, 5);
pub const FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION = @as(c_int, 6);
pub const FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE = @as(c_int, 7);
pub const FF_PROFILE_MPEG4_HYBRID = @as(c_int, 8);
pub const FF_PROFILE_MPEG4_ADVANCED_REAL_TIME = @as(c_int, 9);
pub const FF_PROFILE_MPEG4_CORE_SCALABLE = @as(c_int, 10);
pub const FF_PROFILE_MPEG4_ADVANCED_CODING = @as(c_int, 11);
pub const FF_PROFILE_MPEG4_ADVANCED_CORE = @as(c_int, 12);
pub const FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE = @as(c_int, 13);
pub const FF_PROFILE_MPEG4_SIMPLE_STUDIO = @as(c_int, 14);
pub const FF_PROFILE_MPEG4_ADVANCED_SIMPLE = @as(c_int, 15);
pub const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0 = @as(c_int, 1);
pub const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1 = @as(c_int, 2);
pub const FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION = __helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const FF_PROFILE_JPEG2000_DCINEMA_2K = @as(c_int, 3);
pub const FF_PROFILE_JPEG2000_DCINEMA_4K = @as(c_int, 4);
pub const FF_PROFILE_VP9_0 = @as(c_int, 0);
pub const FF_PROFILE_VP9_1 = @as(c_int, 1);
pub const FF_PROFILE_VP9_2 = @as(c_int, 2);
pub const FF_PROFILE_VP9_3 = @as(c_int, 3);
pub const FF_PROFILE_HEVC_MAIN = @as(c_int, 1);
pub const FF_PROFILE_HEVC_MAIN_10 = @as(c_int, 2);
pub const FF_PROFILE_HEVC_MAIN_STILL_PICTURE = @as(c_int, 3);
pub const FF_PROFILE_HEVC_REXT = @as(c_int, 4);
pub const FF_PROFILE_VVC_MAIN_10 = @as(c_int, 1);
pub const FF_PROFILE_VVC_MAIN_10_444 = @as(c_int, 33);
pub const FF_PROFILE_AV1_MAIN = @as(c_int, 0);
pub const FF_PROFILE_AV1_HIGH = @as(c_int, 1);
pub const FF_PROFILE_AV1_PROFESSIONAL = @as(c_int, 2);
pub const FF_PROFILE_MJPEG_HUFFMAN_BASELINE_DCT = @as(c_int, 0xc0);
pub const FF_PROFILE_MJPEG_HUFFMAN_EXTENDED_SEQUENTIAL_DCT = @as(c_int, 0xc1);
pub const FF_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT = @as(c_int, 0xc2);
pub const FF_PROFILE_MJPEG_HUFFMAN_LOSSLESS = @as(c_int, 0xc3);
pub const FF_PROFILE_MJPEG_JPEG_LS = @as(c_int, 0xf7);
pub const FF_PROFILE_SBC_MSBC = @as(c_int, 1);
pub const FF_PROFILE_PRORES_PROXY = @as(c_int, 0);
pub const FF_PROFILE_PRORES_LT = @as(c_int, 1);
pub const FF_PROFILE_PRORES_STANDARD = @as(c_int, 2);
pub const FF_PROFILE_PRORES_HQ = @as(c_int, 3);
pub const FF_PROFILE_PRORES_4444 = @as(c_int, 4);
pub const FF_PROFILE_PRORES_XQ = @as(c_int, 5);
pub const FF_PROFILE_ARIB_PROFILE_A = @as(c_int, 0);
pub const FF_PROFILE_ARIB_PROFILE_C = @as(c_int, 1);
pub const FF_PROFILE_KLVA_SYNC = @as(c_int, 0);
pub const FF_PROFILE_KLVA_ASYNC = @as(c_int, 1);
pub const FF_LEVEL_UNKNOWN = -@as(c_int, 99);
pub const FF_SUB_CHARENC_MODE_DO_NOTHING = -@as(c_int, 1);
pub const FF_SUB_CHARENC_MODE_AUTOMATIC = @as(c_int, 0);
pub const FF_SUB_CHARENC_MODE_PRE_DECODER = @as(c_int, 1);
pub const FF_SUB_CHARENC_MODE_IGNORE = @as(c_int, 2);
pub const FF_DEBUG_VIS_MV_P_FOR = @as(c_int, 0x00000001);
pub const FF_DEBUG_VIS_MV_B_FOR = @as(c_int, 0x00000002);
pub const FF_DEBUG_VIS_MV_B_BACK = @as(c_int, 0x00000004);
pub const FF_CODEC_PROPERTY_LOSSLESS = @as(c_int, 0x00000001);
pub const FF_CODEC_PROPERTY_CLOSED_CAPTIONS = @as(c_int, 0x00000002);
pub const FF_SUB_TEXT_FMT_ASS = @as(c_int, 0);
pub const FF_SUB_TEXT_FMT_ASS_WITH_TIMINGS = @as(c_int, 1);
pub const AV_HWACCEL_CODEC_CAP_EXPERIMENTAL = @as(c_int, 0x0200);
pub const AV_HWACCEL_FLAG_IGNORE_LEVEL = @as(c_int, 1) << @as(c_int, 0);
pub const AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH = @as(c_int, 1) << @as(c_int, 1);
pub const AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH = @as(c_int, 1) << @as(c_int, 2);
pub const AV_SUBTITLE_FLAG_FORCED = @as(c_int, 0x00000001);
pub const AV_PARSER_PTS_NB = @as(c_int, 4);
pub const PARSER_FLAG_COMPLETE_FRAMES = @as(c_int, 0x0001);
pub const PARSER_FLAG_ONCE = @as(c_int, 0x0002);
pub const PARSER_FLAG_FETCHED_OFFSET = @as(c_int, 0x0004);
pub const PARSER_FLAG_USE_CODEC_TS = @as(c_int, 0x1000);
pub const AVFORMAT_AVIO_H = "";
pub const AVFORMAT_VERSION_H = "";
pub const LIBAVFORMAT_VERSION_MAJOR = @as(c_int, 58);
pub const LIBAVFORMAT_VERSION_MINOR = @as(c_int, 74);
pub const LIBAVFORMAT_VERSION_MICRO = @as(c_int, 100);
pub const LIBAVFORMAT_VERSION_INT = AV_VERSION_INT(LIBAVFORMAT_VERSION_MAJOR, LIBAVFORMAT_VERSION_MINOR, LIBAVFORMAT_VERSION_MICRO);
pub const LIBAVFORMAT_VERSION = AV_VERSION(LIBAVFORMAT_VERSION_MAJOR, LIBAVFORMAT_VERSION_MINOR, LIBAVFORMAT_VERSION_MICRO);
pub const LIBAVFORMAT_BUILD = LIBAVFORMAT_VERSION_INT;
pub const LIBAVFORMAT_IDENT = "Lavf" ++ AV_STRINGIFY(LIBAVFORMAT_VERSION);
pub const FF_API_COMPUTE_PKT_FIELDS2 = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_OPEN_CALLBACKS = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LAVF_AVCTX = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_HTTP_USER_AGENT = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_HLS_WRAP = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_HLS_USE_LOCALTIME = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LAVF_KEEPSIDE_FLAG = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_ROTATE_API = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_FORMAT_GET_SET = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_AVIO_EOF_0 = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LAVF_FFSERVER = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_FORMAT_FILENAME = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_OLD_RTSP_OPTIONS = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_DASH_MIN_SEG_DURATION = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LAVF_MP4A_LATM = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_AVIOFORMAT = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_DEMUXER_OPEN = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 59);
pub const FF_API_LAVF_PRIV_OPT = LIBAVFORMAT_VERSION_MAJOR < @as(c_int, 60);
pub const FF_API_R_FRAME_RATE = @as(c_int, 1);
pub const AVIO_SEEKABLE_NORMAL = @as(c_int, 1) << @as(c_int, 0);
pub const AVIO_SEEKABLE_TIME = @as(c_int, 1) << @as(c_int, 1);
pub const AVSEEK_SIZE = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const AVSEEK_FORCE = __helpers.promoteIntLiteral(c_int, 0x20000, .hex);
pub const avio_print = @compileError("unable to translate C expr: unexpected token 'const'");
// ffmpeg-src/libavformat/avio.h:594:9
pub const AVIO_FLAG_READ = @as(c_int, 1);
pub const AVIO_FLAG_WRITE = @as(c_int, 2);
pub const AVIO_FLAG_READ_WRITE = AVIO_FLAG_READ | AVIO_FLAG_WRITE;
pub const AVIO_FLAG_NONBLOCK = @as(c_int, 8);
pub const AVIO_FLAG_DIRECT = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const AVPROBE_SCORE_RETRY = __helpers.div(AVPROBE_SCORE_MAX, @as(c_int, 4));
pub const AVPROBE_SCORE_STREAM_RETRY = __helpers.div(AVPROBE_SCORE_MAX, @as(c_int, 4)) - @as(c_int, 1);
pub const AVPROBE_SCORE_EXTENSION = @as(c_int, 50);
pub const AVPROBE_SCORE_MIME = @as(c_int, 75);
pub const AVPROBE_SCORE_MAX = @as(c_int, 100);
pub const AVPROBE_PADDING_SIZE = @as(c_int, 32);
pub const AVFMT_NOFILE = @as(c_int, 0x0001);
pub const AVFMT_NEEDNUMBER = @as(c_int, 0x0002);
pub const AVFMT_SHOW_IDS = @as(c_int, 0x0008);
pub const AVFMT_GLOBALHEADER = @as(c_int, 0x0040);
pub const AVFMT_NOTIMESTAMPS = @as(c_int, 0x0080);
pub const AVFMT_GENERIC_INDEX = @as(c_int, 0x0100);
pub const AVFMT_TS_DISCONT = @as(c_int, 0x0200);
pub const AVFMT_VARIABLE_FPS = @as(c_int, 0x0400);
pub const AVFMT_NODIMENSIONS = @as(c_int, 0x0800);
pub const AVFMT_NOSTREAMS = @as(c_int, 0x1000);
pub const AVFMT_NOBINSEARCH = @as(c_int, 0x2000);
pub const AVFMT_NOGENSEARCH = @as(c_int, 0x4000);
pub const AVFMT_NO_BYTE_SEEK = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const AVFMT_ALLOW_FLUSH = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const AVFMT_TS_NONSTRICT = __helpers.promoteIntLiteral(c_int, 0x20000, .hex);
pub const AVFMT_TS_NEGATIVE = __helpers.promoteIntLiteral(c_int, 0x40000, .hex);
pub const AVFMT_SEEK_TO_PTS = __helpers.promoteIntLiteral(c_int, 0x4000000, .hex);
pub const ff_const59 = "";
pub const AVINDEX_KEYFRAME = @as(c_int, 0x0001);
pub const AVINDEX_DISCARD_FRAME = @as(c_int, 0x0002);
pub const AV_DISPOSITION_DEFAULT = @as(c_int, 0x0001);
pub const AV_DISPOSITION_DUB = @as(c_int, 0x0002);
pub const AV_DISPOSITION_ORIGINAL = @as(c_int, 0x0004);
pub const AV_DISPOSITION_COMMENT = @as(c_int, 0x0008);
pub const AV_DISPOSITION_LYRICS = @as(c_int, 0x0010);
pub const AV_DISPOSITION_KARAOKE = @as(c_int, 0x0020);
pub const AV_DISPOSITION_FORCED = @as(c_int, 0x0040);
pub const AV_DISPOSITION_HEARING_IMPAIRED = @as(c_int, 0x0080);
pub const AV_DISPOSITION_VISUAL_IMPAIRED = @as(c_int, 0x0100);
pub const AV_DISPOSITION_CLEAN_EFFECTS = @as(c_int, 0x0200);
pub const AV_DISPOSITION_ATTACHED_PIC = @as(c_int, 0x0400);
pub const AV_DISPOSITION_TIMED_THUMBNAILS = @as(c_int, 0x0800);
pub const AV_DISPOSITION_CAPTIONS = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const AV_DISPOSITION_DESCRIPTIONS = __helpers.promoteIntLiteral(c_int, 0x20000, .hex);
pub const AV_DISPOSITION_METADATA = __helpers.promoteIntLiteral(c_int, 0x40000, .hex);
pub const AV_DISPOSITION_DEPENDENT = __helpers.promoteIntLiteral(c_int, 0x80000, .hex);
pub const AV_DISPOSITION_STILL_IMAGE = __helpers.promoteIntLiteral(c_int, 0x100000, .hex);
pub const AV_PTS_WRAP_IGNORE = @as(c_int, 0);
pub const AV_PTS_WRAP_ADD_OFFSET = @as(c_int, 1);
pub const AV_PTS_WRAP_SUB_OFFSET = -@as(c_int, 1);
pub const AVSTREAM_EVENT_FLAG_METADATA_UPDATED = @as(c_int, 0x0001);
pub const AVSTREAM_EVENT_FLAG_NEW_PACKETS = @as(c_int, 1) << @as(c_int, 1);
pub const AV_PROGRAM_RUNNING = @as(c_int, 1);
pub const AVFMTCTX_NOHEADER = @as(c_int, 0x0001);
pub const AVFMTCTX_UNSEEKABLE = @as(c_int, 0x0002);
pub const AVFMT_FLAG_GENPTS = @as(c_int, 0x0001);
pub const AVFMT_FLAG_IGNIDX = @as(c_int, 0x0002);
pub const AVFMT_FLAG_NONBLOCK = @as(c_int, 0x0004);
pub const AVFMT_FLAG_IGNDTS = @as(c_int, 0x0008);
pub const AVFMT_FLAG_NOFILLIN = @as(c_int, 0x0010);
pub const AVFMT_FLAG_NOPARSE = @as(c_int, 0x0020);
pub const AVFMT_FLAG_NOBUFFER = @as(c_int, 0x0040);
pub const AVFMT_FLAG_CUSTOM_IO = @as(c_int, 0x0080);
pub const AVFMT_FLAG_DISCARD_CORRUPT = @as(c_int, 0x0100);
pub const AVFMT_FLAG_FLUSH_PACKETS = @as(c_int, 0x0200);
pub const AVFMT_FLAG_BITEXACT = @as(c_int, 0x0400);
pub const AVFMT_FLAG_MP4A_LATM = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const AVFMT_FLAG_SORT_DTS = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const AVFMT_FLAG_PRIV_OPT = __helpers.promoteIntLiteral(c_int, 0x20000, .hex);
pub const AVFMT_FLAG_KEEP_SIDE_DATA = __helpers.promoteIntLiteral(c_int, 0x40000, .hex);
pub const AVFMT_FLAG_FAST_SEEK = __helpers.promoteIntLiteral(c_int, 0x80000, .hex);
pub const AVFMT_FLAG_SHORTEST = __helpers.promoteIntLiteral(c_int, 0x100000, .hex);
pub const AVFMT_FLAG_AUTO_BSF = __helpers.promoteIntLiteral(c_int, 0x200000, .hex);
pub const FF_FDEBUG_TS = @as(c_int, 0x0001);
pub const AVFMT_EVENT_FLAG_METADATA_UPDATED = @as(c_int, 0x0001);
pub const AVFMT_AVOID_NEG_TS_AUTO = -@as(c_int, 1);
pub const AVFMT_AVOID_NEG_TS_MAKE_NON_NEGATIVE = @as(c_int, 1);
pub const AVFMT_AVOID_NEG_TS_MAKE_ZERO = @as(c_int, 2);
pub const AVSEEK_FLAG_BACKWARD = @as(c_int, 1);
pub const AVSEEK_FLAG_BYTE = @as(c_int, 2);
pub const AVSEEK_FLAG_ANY = @as(c_int, 4);
pub const AVSEEK_FLAG_FRAME = @as(c_int, 8);
pub const AVSTREAM_INIT_IN_WRITE_HEADER = @as(c_int, 0);
pub const AVSTREAM_INIT_IN_INIT_OUTPUT = @as(c_int, 1);
pub const AV_FRAME_FILENAME_FLAGS_MULTIPLE = @as(c_int, 1);
pub const __clockid = struct___clockid;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __locale_struct = struct___locale_struct;
pub const iovec = struct_iovec;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const _IO_FILE = struct__IO_FILE;
pub const _G_fpos64_t = union__G_fpos64_t;
pub const AVMediaType = enum_AVMediaType;
pub const AVPictureType = enum_AVPictureType;
pub const av_intfloat32 = union_av_intfloat32;
pub const av_intfloat64 = union_av_intfloat64;
pub const AVRounding = enum_AVRounding;
pub const AVOptionRanges = struct_AVOptionRanges;
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
pub const AVCodecInternal = struct_AVCodecInternal;
pub const AVAudioServiceType = enum_AVAudioServiceType;
pub const MpegEncContext = struct_MpegEncContext;
pub const AVDiscard = enum_AVDiscard;
pub const AVPictureStructure = enum_AVPictureStructure;
pub const AVLockOp = enum_AVLockOp;
pub const AVIODirEntryType = enum_AVIODirEntryType;
pub const AVIODataMarkerType = enum_AVIODataMarkerType;
pub const AVCodecTag = struct_AVCodecTag;
pub const AVDeviceInfoList = struct_AVDeviceInfoList;
pub const AVDeviceCapabilitiesQuery = struct_AVDeviceCapabilitiesQuery;
pub const AVStreamParseType = enum_AVStreamParseType;
pub const AVDurationEstimationMethod = enum_AVDurationEstimationMethod;
pub const AVTimebaseSource = enum_AVTimebaseSource;
