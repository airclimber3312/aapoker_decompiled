.class public final enum Lcom/google/android/gms/internal/zzenk;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzenk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zznoy:Lcom/google/android/gms/internal/zzenk;

.field public static final enum zznoz:Lcom/google/android/gms/internal/zzenk;

.field public static final enum zznpa:Lcom/google/android/gms/internal/zzenk;

.field public static final enum zznpb:Lcom/google/android/gms/internal/zzenk;

.field private static final synthetic zznpc:[Lcom/google/android/gms/internal/zzenk;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/zzenk;

    const-string v1, "DeferredValue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzenk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzenk;->zznoy:Lcom/google/android/gms/internal/zzenk;

    new-instance v1, Lcom/google/android/gms/internal/zzenk;

    const-string v3, "Boolean"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzenk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/zzenk;->zznoz:Lcom/google/android/gms/internal/zzenk;

    new-instance v3, Lcom/google/android/gms/internal/zzenk;

    const-string v5, "Number"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/zzenk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/zzenk;->zznpa:Lcom/google/android/gms/internal/zzenk;

    new-instance v5, Lcom/google/android/gms/internal/zzenk;

    const-string v7, "String"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/zzenk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/zzenk;->zznpb:Lcom/google/android/gms/internal/zzenk;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/zzenk;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/zzenk;->zznpc:[Lcom/google/android/gms/internal/zzenk;

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

.method public static values()[Lcom/google/android/gms/internal/zzenk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenk;->zznpc:[Lcom/google/android/gms/internal/zzenk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzenk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzenk;

    return-object v0
.end method
