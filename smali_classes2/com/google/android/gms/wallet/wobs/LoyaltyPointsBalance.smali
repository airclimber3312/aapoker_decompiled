.class public final Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;,
        Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzlkt:Ljava/lang/String;

.field zzlqa:I

.field zzlqb:Ljava/lang/String;

.field zzlqc:D

.field zzlqd:J

.field zzlqe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqe:I

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqa:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqc:D

    return-void
.end method

.method constructor <init>(ILjava/lang/String;DLjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqa:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqc:D

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlkt:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqd:J

    iput p8, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqe:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance$Builder;-><init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;Lcom/google/android/gms/wallet/wobs/zzg;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlkt:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyMicros()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqd:J

    return-wide v0
.end method

.method public final getDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqc:D

    return-wide v0
.end method

.method public final getInt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqa:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqb:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqe:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqa:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqb:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqc:D

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ID)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlkt:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqd:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;->zzlqe:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
