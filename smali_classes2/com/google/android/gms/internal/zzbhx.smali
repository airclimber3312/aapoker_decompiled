.class public final Lcom/google/android/gms/internal/zzbhx;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbhx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final key:Ljava/lang/String;

.field private versionCode:I

.field final zzgjc:Lcom/google/android/gms/internal/zzbhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbhu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbhu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbhx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzbhq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbhx;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhx;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbhx;->zzgjc:Lcom/google/android/gms/internal/zzbhq;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbhq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbhx;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhx;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhx;->zzgjc:Lcom/google/android/gms/internal/zzbhq;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbhx;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhx;->key:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbhx;->zzgjc:Lcom/google/android/gms/internal/zzbhq;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
