.class public final Lcom/google/android/gms/fitness/request/zzbh;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzbh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzhnu:Lcom/google/android/gms/internal/zzbzt;

.field private final zzhpq:Lcom/google/android/gms/fitness/request/zzae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.request.IBleScanCallback"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/fitness/request/zzae;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/fitness/request/zzae;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/request/zzag;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhpq:Lcom/google/android/gms/fitness/request/zzae;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbzu;->zzba(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbzt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzbzt;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/fitness/request/zzd;->zzasf()Lcom/google/android/gms/fitness/request/zzd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zzd;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzbh;-><init>(Lcom/google/android/gms/fitness/request/zzae;Lcom/google/android/gms/internal/zzbzt;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzae;Lcom/google/android/gms/internal/zzbzt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhpq:Lcom/google/android/gms/fitness/request/zzae;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhpq:Lcom/google/android/gms/fitness/request/zzae;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzae;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbh;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbzt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
