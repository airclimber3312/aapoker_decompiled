.class public final Lcom/google/android/gms/wallet/TransactionInfo;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/TransactionInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/TransactionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzlnw:I

.field zzlnx:Ljava/lang/String;

.field zzlny:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/TransactionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnw:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnx:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlny:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/TransactionInfo$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/TransactionInfo$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/TransactionInfo;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/TransactionInfo;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/TransactionInfo$Builder;-><init>(Lcom/google/android/gms/wallet/TransactionInfo;Lcom/google/android/gms/wallet/zzan;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlny:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnx:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalPriceStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnw:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnw:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlnx:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/wallet/TransactionInfo;->zzlny:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
