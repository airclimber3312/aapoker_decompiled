.class final Lcom/google/android/gms/internal/zzecx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

.field private final zzmvi:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crash/FirebaseCrash$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecx;->zzmvi:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecx;->zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecx;->zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecx;->zzmvi:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/zzecl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecx;->mContext:Landroid/content/Context;

    move-object v0, v7

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzecl;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-interface {p1, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
