.class final Lcom/google/firebase/database/connection/idl/zzi;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/database/connection/idl/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private host:Ljava/lang/String;

.field private secure:Z

.field private zzkal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzj;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zzj;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzi;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzi;->zzkal:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/firebase/database/connection/idl/zzi;->secure:Z

    return-void
.end method

.method public static zza(Lcom/google/firebase/database/connection/idl/zzi;)Lcom/google/android/gms/internal/zzeeu;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzeeu;

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzi;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzi;->zzkal:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/firebase/database/connection/idl/zzi;->secure:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/zzeeu;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzi;->host:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzi;->zzkal:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/firebase/database/connection/idl/zzi;->secure:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
