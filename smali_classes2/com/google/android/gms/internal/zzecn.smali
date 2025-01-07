.class public final Lcom/google/android/gms/internal/zzecn;
.super Lcom/google/android/gms/internal/zzeck;


# instance fields
.field private final zzmvc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeck;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecn;->zzmvc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Failed to log message"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzeck;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/zzect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecn;->zzmvc:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzect;->log(Ljava/lang/String;)V

    return-void
.end method
