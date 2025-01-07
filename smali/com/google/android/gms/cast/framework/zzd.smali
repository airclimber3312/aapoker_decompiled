.class public final Lcom/google/android/gms/cast/framework/zzd;
.super Lcom/google/android/gms/cast/framework/zzo;


# instance fields
.field private final zzfav:Lcom/google/android/gms/cast/framework/CastStateListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzd;->zzfav:Lcom/google/android/gms/cast/framework/CastStateListener;

    return-void
.end method


# virtual methods
.method public final onCastStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzd;->zzfav:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/CastStateListener;->onCastStateChanged(I)V

    return-void
.end method

.method public final zzadx()I
    .locals 1

    const v0, 0xba544e

    return v0
.end method

.method public final zzady()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzd;->zzfav:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
