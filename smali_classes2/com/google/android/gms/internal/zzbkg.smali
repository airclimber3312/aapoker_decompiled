.class public final Lcom/google/android/gms/internal/zzbkg;
.super Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbkg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgnk:Lcom/google/android/gms/internal/zzbkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbkh;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzbkh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbkg;-><init>(Lcom/google/android/gms/internal/zzbkh;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbkh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceQueryRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkg;->zzgnk:Lcom/google/android/gms/internal/zzbkh;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbkh;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzbkh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbkg;-><init>(Lcom/google/android/gms/internal/zzbkh;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbkh;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzbkh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbkg;-><init>(Lcom/google/android/gms/internal/zzbkh;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkg;->zzgnk:Lcom/google/android/gms/internal/zzbkh;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
