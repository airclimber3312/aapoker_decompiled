.class public final Lcom/google/android/gms/internal/zzcii;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcii;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field private versionCode:I

.field public zzjgm:Ljava/lang/String;

.field public zzjgn:Lcom/google/android/gms/internal/zzcnl;

.field public zzjgo:J

.field public zzjgp:Z

.field public zzjgq:Ljava/lang/String;

.field public zzjgr:Lcom/google/android/gms/internal/zzcix;

.field public zzjgs:J

.field public zzjgt:Lcom/google/android/gms/internal/zzcix;

.field public zzjgu:J

.field public zzjgv:Lcom/google/android/gms/internal/zzcix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcii;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcnl;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcii;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    iput-wide p13, p0, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    iput-object p15, p0, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcii;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcii;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcnl;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcii;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    iput-wide p12, p0, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    iput-object p14, p0, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzcii;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
