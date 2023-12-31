.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    }
.end annotation


# static fields
.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x4L

.field private static sContextField:Ljava/lang/reflect/Field;

.field private static final sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 6
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 77
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    return v0

    .line 80
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_58

    .line 86
    :try_start_13
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    .line 88
    const-class v0, Landroid/location/LocationManager;

    const-string v4, "mContext"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    .line 90
    :cond_21
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 93
    .local v0, "context":Landroid/content/Context;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v1, :cond_40

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "location_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    return v2

    .line 97
    :cond_40
    nop

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "location_providers_allowed"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_4f} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_4f} :catch_55
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_4f} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_4f} :catch_51

    xor-int/2addr v1, v3

    return v1

    .line 101
    .end local v0    # "context":Landroid/content/Context;
    :catch_51
    move-exception v0

    goto :goto_58

    :catch_53
    move-exception v0

    goto :goto_58

    :catch_55
    move-exception v0

    goto :goto_58

    :catch_57
    move-exception v0

    .line 107
    :cond_58
    :goto_58
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 108
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_68
    const/4 v2, 0x1

    .line 107
    :cond_69
    return v2
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 22
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "baseHandler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1e

    if-lt v0, v7, :cond_32

    .line 171
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v7

    .line 172
    nop

    .line 173
    :try_start_14
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    .line 174
    .local v0, "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    if-nez v0, :cond_22

    .line 175
    new-instance v8, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    invoke-direct {v8, v4}, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v0, v8

    .line 177
    :cond_22
    invoke-virtual {v1, v3, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 178
    invoke-virtual {v7, v4, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v7

    return v5

    .line 181
    :cond_2d
    monitor-exit v7

    return v6

    .line 183
    .end local v0    # "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    :catchall_2f
    move-exception v0

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v0

    .line 184
    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v0, v7, :cond_69

    .line 185
    if-eqz v2, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 186
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v7

    .line 187
    nop

    .line 188
    :try_start_44
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 189
    .local v0, "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    if-nez v0, :cond_53

    .line 190
    new-instance v8, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-direct {v8, v4}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v0, v8

    goto :goto_56

    .line 192
    :cond_53
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 194
    :goto_56
    invoke-virtual {v0, v3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 196
    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 197
    invoke-virtual {v7, v4, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit v7

    return v5

    .line 200
    :cond_64
    monitor-exit v7

    return v6

    .line 202
    .end local v0    # "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    :catchall_66
    move-exception v0

    monitor-exit v7
    :try_end_68
    .catchall {:try_start_44 .. :try_end_68} :catchall_66

    throw v0

    .line 204
    :cond_69
    if-eqz v2, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 205
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v7

    .line 206
    nop

    .line 207
    :try_start_75
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    .line 208
    .local v0, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    if-nez v0, :cond_84

    .line 209
    new-instance v8, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-direct {v8, v1, v4}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;-><init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v0, v8

    goto :goto_88

    .line 211
    :cond_84
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V

    move-object v8, v0

    .line 213
    .end local v0    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .local v8, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    :goto_88
    invoke-virtual {v8, v3}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 215
    move-object v9, v8

    .line 216
    .local v9, "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v10, Landroidx/core/location/LocationManagerCompat$1;

    invoke-direct {v10, v1, v9}, Landroidx/core/location/LocationManagerCompat$1;-><init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V

    invoke-direct {v0, v10}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v10, v0

    .line 224
    .local v10, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    if-ne v0, v11, :cond_a5

    .line 225
    invoke-virtual {v10}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_ab

    .line 226
    :cond_a5
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0
    :try_end_a9
    .catchall {:try_start_75 .. :try_end_a9} :catchall_14e

    if-eqz v0, :cond_137

    .line 230
    :goto_ab
    const/4 v11, 0x0

    .line 232
    .local v11, "interrupted":Z
    :try_start_ac
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x4

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 233
    .local v12, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14
    :try_end_b8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ac .. :try_end_b8} :catch_107
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ac .. :try_end_b8} :catch_ef
    .catchall {:try_start_ac .. :try_end_b8} :catchall_ed

    add-long/2addr v14, v12

    .line 236
    .local v14, "end":J
    :goto_b9
    :try_start_b9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v12, v13, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 237
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v4, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_cc} :catch_e4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b9 .. :try_end_cc} :catch_107
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b9 .. :try_end_cc} :catch_ef
    .catchall {:try_start_b9 .. :try_end_cc} :catchall_ed

    .line 238
    nop

    .line 261
    if-eqz v11, :cond_d6

    .line 262
    :try_start_cf
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d6
    monitor-exit v7

    .line 238
    return v5

    .line 240
    :cond_d8
    nop

    .line 261
    if-eqz v11, :cond_e2

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e2
    monitor-exit v7
    :try_end_e3
    .catchall {:try_start_cf .. :try_end_e3} :catchall_14e

    .line 240
    return v6

    .line 242
    :catch_e4
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v11, 0x1

    .line 245
    :try_start_e6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_ea
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e6 .. :try_end_ea} :catch_107
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e6 .. :try_end_ea} :catch_ef
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ed

    sub-long v12, v14, v16

    .line 246
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_b9

    .line 261
    .end local v12    # "remainingNanos":J
    .end local v14    # "end":J
    :catchall_ed
    move-exception v0

    goto :goto_12c

    .line 256
    :catch_ef
    move-exception v0

    .line 257
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_f0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " appears to be blocked, please run registerGnssStatusCallback() directly on a Looper thread or ensure the main Looper is not blocked by this thread"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v5

    .line 248
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :catch_107
    move-exception v0

    .line 249
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-nez v5, :cond_125

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Error;

    if-eqz v5, :cond_11f

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/lang/Error;

    .end local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v5

    .line 254
    .restart local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_11f
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v5

    .line 250
    .restart local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_125
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v5
    :try_end_12c
    .catchall {:try_start_f0 .. :try_end_12c} :catchall_ed

    .line 261
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :goto_12c
    if-eqz v11, :cond_135

    .line 262
    :try_start_12e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 264
    :cond_135
    nop

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v0

    .line 227
    .end local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is shutting down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v0

    .line 265
    .end local v8    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :catchall_14e
    move-exception v0

    monitor-exit v7
    :try_end_150
    .catchall {:try_start_12e .. :try_end_150} :catchall_14e

    throw v0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_f

    .line 126
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 129
    :cond_f
    new-instance v0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;

    invoke-direct {v0, p2}, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 156
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 158
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 159
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_16

    .line 160
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 162
    :cond_16
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v1, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v1

    return v1
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 4
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1a

    .line 277
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 278
    nop

    .line 279
    :try_start_a
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    .line 280
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    if-eqz v1, :cond_15

    .line 281
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 283
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    :cond_15
    monitor-exit v0

    goto :goto_4a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v1

    .line 284
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_37

    .line 285
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 286
    nop

    .line 287
    :try_start_24
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 288
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    if-eqz v1, :cond_32

    .line 289
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 290
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 292
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    :cond_32
    monitor-exit v0

    goto :goto_4a

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v1

    .line 294
    :cond_37
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 295
    nop

    .line 296
    :try_start_3b
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    .line 297
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    if-eqz v1, :cond_49

    .line 298
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V

    .line 299
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 301
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    :cond_49
    monitor-exit v0

    .line 303
    :goto_4a
    return-void

    .line 301
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4b

    throw v1
.end method
