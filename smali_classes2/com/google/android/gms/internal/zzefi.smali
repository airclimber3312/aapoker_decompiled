.class final enum Lcom/google/android/gms/internal/zzefi;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzefi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zznbh:Lcom/google/android/gms/internal/zzefi;

.field public static final enum zznbi:Lcom/google/android/gms/internal/zzefi;

.field public static final enum zznbj:Lcom/google/android/gms/internal/zzefi;

.field public static final enum zznbk:Lcom/google/android/gms/internal/zzefi;

.field public static final enum zznbl:Lcom/google/android/gms/internal/zzefi;

.field private static final synthetic zznbm:[Lcom/google/android/gms/internal/zzefi;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/zzefi;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzefi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    new-instance v1, Lcom/google/android/gms/internal/zzefi;

    const-string v3, "GettingToken"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzefi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/zzefi;->zznbi:Lcom/google/android/gms/internal/zzefi;

    new-instance v3, Lcom/google/android/gms/internal/zzefi;

    const-string v5, "Connecting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/zzefi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/zzefi;->zznbj:Lcom/google/android/gms/internal/zzefi;

    new-instance v5, Lcom/google/android/gms/internal/zzefi;

    const-string v7, "Authenticating"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/zzefi;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/zzefi;->zznbk:Lcom/google/android/gms/internal/zzefi;

    new-instance v7, Lcom/google/android/gms/internal/zzefi;

    const-string v9, "Connected"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/zzefi;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/zzefi;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/zzefi;->zznbm:[Lcom/google/android/gms/internal/zzefi;

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

.method public static values()[Lcom/google/android/gms/internal/zzefi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbm:[Lcom/google/android/gms/internal/zzefi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzefi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzefi;

    return-object v0
.end method
