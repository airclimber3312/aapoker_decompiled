.class public final enum Lcom/google/android/gms/internal/zzdvw;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzfia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdvw;",
        ">;",
        "Lcom/google/android/gms/internal/zzfia;"
    }
.end annotation


# static fields
.field private static final zzbcn:Lcom/google/android/gms/internal/zzfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfib<",
            "Lcom/google/android/gms/internal/zzdvw;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzmhj:Lcom/google/android/gms/internal/zzdvw;

.field private static enum zzmhk:Lcom/google/android/gms/internal/zzdvw;

.field public static final enum zzmhl:Lcom/google/android/gms/internal/zzdvw;

.field public static final enum zzmhm:Lcom/google/android/gms/internal/zzdvw;

.field public static final enum zzmhn:Lcom/google/android/gms/internal/zzdvw;

.field public static final enum zzmho:Lcom/google/android/gms/internal/zzdvw;

.field private static final synthetic zzmhp:[Lcom/google/android/gms/internal/zzdvw;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/zzdvw;

    const-string v1, "UNKNOWN_CURVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdvw;->zzmhj:Lcom/google/android/gms/internal/zzdvw;

    new-instance v1, Lcom/google/android/gms/internal/zzdvw;

    const-string v3, "NIST_P224"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/zzdvw;->zzmhk:Lcom/google/android/gms/internal/zzdvw;

    new-instance v1, Lcom/google/android/gms/internal/zzdvw;

    const-string v3, "NIST_P256"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v5, v5}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/zzdvw;->zzmhl:Lcom/google/android/gms/internal/zzdvw;

    new-instance v3, Lcom/google/android/gms/internal/zzdvw;

    const-string v6, "NIST_P384"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v7}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdvw;->zzmhm:Lcom/google/android/gms/internal/zzdvw;

    new-instance v6, Lcom/google/android/gms/internal/zzdvw;

    const-string v8, "NIST_P521"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v9}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/zzdvw;->zzmhn:Lcom/google/android/gms/internal/zzdvw;

    new-instance v8, Lcom/google/android/gms/internal/zzdvw;

    const/4 v10, -0x1

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v12, v10}, Lcom/google/android/gms/internal/zzdvw;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/zzdvw;->zzmho:Lcom/google/android/gms/internal/zzdvw;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/google/android/gms/internal/zzdvw;

    aput-object v0, v10, v2

    sget-object v0, Lcom/google/android/gms/internal/zzdvw;->zzmhk:Lcom/google/android/gms/internal/zzdvw;

    aput-object v0, v10, v4

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    aput-object v6, v10, v9

    aput-object v8, v10, v12

    sput-object v10, Lcom/google/android/gms/internal/zzdvw;->zzmhp:[Lcom/google/android/gms/internal/zzdvw;

    new-instance v0, Lcom/google/android/gms/internal/zzdvx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdvx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdvw;->zzbcn:Lcom/google/android/gms/internal/zzfib;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/zzdvw;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdvw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdvw;->zzmhp:[Lcom/google/android/gms/internal/zzdvw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdvw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdvw;

    return-object v0
.end method

.method public static zzgk(I)Lcom/google/android/gms/internal/zzdvw;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzdvw;->zzmhn:Lcom/google/android/gms/internal/zzdvw;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzdvw;->zzmhm:Lcom/google/android/gms/internal/zzdvw;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/zzdvw;->zzmhl:Lcom/google/android/gms/internal/zzdvw;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzdvw;->zzmhk:Lcom/google/android/gms/internal/zzdvw;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/zzdvw;->zzmhj:Lcom/google/android/gms/internal/zzdvw;

    return-object p0
.end method


# virtual methods
.method public final zzhu()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdvw;->zzmho:Lcom/google/android/gms/internal/zzdvw;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdvw;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
