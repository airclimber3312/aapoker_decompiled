.class public final Lcom/google/android/gms/internal/zzazd;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzazd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzerj:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final zzerk:Lcom/google/android/gms/internal/zzayo;

.field private final zzerl:Lcom/google/android/gms/internal/zzays;

.field private final zzerm:Lcom/google/android/gms/internal/zzayu;

.field private final zzern:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzero:Lcom/google/android/gms/internal/zzayz;

.field private final zzerp:Lcom/google/android/gms/internal/zzazb;

.field private final zzerq:Lcom/google/android/gms/internal/zzbac;

.field private final zzerr:Lcom/google/android/gms/internal/zzazz;

.field private final zzers:Lcom/google/android/gms/internal/zzbjp;

.field private final zzhl:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzazv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/internal/zzayo;Lcom/google/android/gms/internal/zzays;Landroid/location/Location;Lcom/google/android/gms/internal/zzayu;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzayz;Lcom/google/android/gms/internal/zzazb;Lcom/google/android/gms/internal/zzbac;Lcom/google/android/gms/internal/zzazz;Lcom/google/android/gms/internal/zzbjp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazd;->zzerj:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazd;->zzerk:Lcom/google/android/gms/internal/zzayo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazd;->zzerl:Lcom/google/android/gms/internal/zzays;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazd;->zzhl:Landroid/location/Location;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazd;->zzerm:Lcom/google/android/gms/internal/zzayu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzazd;->zzern:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzazd;->zzero:Lcom/google/android/gms/internal/zzayz;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzazd;->zzerp:Lcom/google/android/gms/internal/zzazb;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzazd;->zzerq:Lcom/google/android/gms/internal/zzbac;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzazd;->zzerr:Lcom/google/android/gms/internal/zzazz;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzazd;->zzers:Lcom/google/android/gms/internal/zzbjp;

    return-void
.end method


# virtual methods
.method public final getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzerj:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzhl:Landroid/location/Location;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazd;->zzerj:Lcom/google/android/gms/location/ActivityRecognitionResult;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerk:Lcom/google/android/gms/internal/zzayo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerl:Lcom/google/android/gms/internal/zzays;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzhl:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerm:Lcom/google/android/gms/internal/zzayu;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzern:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzero:Lcom/google/android/gms/internal/zzayz;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerp:Lcom/google/android/gms/internal/zzazb;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerq:Lcom/google/android/gms/internal/zzbac;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzerr:Lcom/google/android/gms/internal/zzazz;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazd;->zzers:Lcom/google/android/gms/internal/zzbjp;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzadg()Lcom/google/android/gms/internal/zzayo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzerk:Lcom/google/android/gms/internal/zzayo;

    return-object v0
.end method

.method public final zzadh()Lcom/google/android/gms/internal/zzays;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzerl:Lcom/google/android/gms/internal/zzays;

    return-object v0
.end method

.method public final zzadi()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzern:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public final zzadj()Lcom/google/android/gms/internal/zzbac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzerq:Lcom/google/android/gms/internal/zzbac;

    return-object v0
.end method

.method public final zzadk()Lcom/google/android/gms/internal/zzazz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazd;->zzerr:Lcom/google/android/gms/internal/zzazz;

    return-object v0
.end method
