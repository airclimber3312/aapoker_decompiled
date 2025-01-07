.class public final enum Lcom/google/android/gms/internal/zzenp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzenp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zznpg:Lcom/google/android/gms/internal/zzenp;

.field public static final enum zznph:Lcom/google/android/gms/internal/zzenp;

.field private static final synthetic zznpi:[Lcom/google/android/gms/internal/zzenp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzenp;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzenp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzenp;->zznpg:Lcom/google/android/gms/internal/zzenp;

    new-instance v1, Lcom/google/android/gms/internal/zzenp;

    const-string v3, "V2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzenp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/zzenp;->zznph:Lcom/google/android/gms/internal/zzenp;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/zzenp;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/gms/internal/zzenp;->zznpi:[Lcom/google/android/gms/internal/zzenp;

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

.method public static values()[Lcom/google/android/gms/internal/zzenp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenp;->zznpi:[Lcom/google/android/gms/internal/zzenp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzenp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzenp;

    return-object v0
.end method
