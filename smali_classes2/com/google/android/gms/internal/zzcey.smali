.class public final Lcom/google/android/gms/internal/zzcey;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzgog:Ljava/lang/String;

.field private final zzipw:I

.field private final zzipx:[Landroid/accounts/Account;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzipy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Landroid/accounts/Account;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcey;->zzipw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcey;->zzgog:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcey;->zzipx:[Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcey;->zzipy:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzcey;->zzipw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzgog:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcey;->zzipx:[Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcey;->zzipy:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
