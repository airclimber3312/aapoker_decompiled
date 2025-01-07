.class public final enum Lcom/google/android/gms/internal/zzdxu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdxu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzmkz:Lcom/google/android/gms/internal/zzdxu;

.field public static final enum zzmla:Lcom/google/android/gms/internal/zzdxu;

.field public static final enum zzmlb:Lcom/google/android/gms/internal/zzdxu;

.field private static final synthetic zzmlc:[Lcom/google/android/gms/internal/zzdxu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzdxu;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdxu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdxu;->zzmkz:Lcom/google/android/gms/internal/zzdxu;

    new-instance v1, Lcom/google/android/gms/internal/zzdxu;

    const-string v3, "NIST_P384"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzdxu;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/zzdxu;->zzmla:Lcom/google/android/gms/internal/zzdxu;

    new-instance v3, Lcom/google/android/gms/internal/zzdxu;

    const-string v5, "NIST_P521"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/zzdxu;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/zzdxu;->zzmlb:Lcom/google/android/gms/internal/zzdxu;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/zzdxu;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/zzdxu;->zzmlc:[Lcom/google/android/gms/internal/zzdxu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdxu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdxu;->zzmlc:[Lcom/google/android/gms/internal/zzdxu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdxu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdxu;

    return-object v0
.end method
