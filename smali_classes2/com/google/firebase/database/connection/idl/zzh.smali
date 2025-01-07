.class final Lcom/google/firebase/database/connection/idl/zzh;
.super Lcom/google/firebase/database/connection/idl/zzai;


# instance fields
.field private synthetic zzncw:Lcom/google/android/gms/internal/zzefo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzh;->zzncw:Lcom/google/android/gms/internal/zzefo;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzai;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzh;->zzncw:Lcom/google/android/gms/internal/zzefo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
