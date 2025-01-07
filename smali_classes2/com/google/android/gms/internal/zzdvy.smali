.class public final enum Lcom/google/android/gms/internal/zzdvy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzfia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdvy;",
        ">;",
        "Lcom/google/android/gms/internal/zzfia;"
    }
.end annotation


# static fields
.field private static final zzbcn:Lcom/google/android/gms/internal/zzfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfib<",
            "Lcom/google/android/gms/internal/zzdvy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzmhq:Lcom/google/android/gms/internal/zzdvy;

.field public static final enum zzmhr:Lcom/google/android/gms/internal/zzdvy;

.field private static enum zzmhs:Lcom/google/android/gms/internal/zzdvy;

.field public static final enum zzmht:Lcom/google/android/gms/internal/zzdvy;

.field public static final enum zzmhu:Lcom/google/android/gms/internal/zzdvy;

.field public static final enum zzmhv:Lcom/google/android/gms/internal/zzdvy;

.field private static final synthetic zzmhw:[Lcom/google/android/gms/internal/zzdvy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/zzdvy;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdvy;->zzmhq:Lcom/google/android/gms/internal/zzdvy;

    new-instance v1, Lcom/google/android/gms/internal/zzdvy;

    const-string v3, "SHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/zzdvy;->zzmhr:Lcom/google/android/gms/internal/zzdvy;

    new-instance v3, Lcom/google/android/gms/internal/zzdvy;

    const-string v5, "SHA224"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdvy;->zzmhs:Lcom/google/android/gms/internal/zzdvy;

    new-instance v3, Lcom/google/android/gms/internal/zzdvy;

    const-string v5, "SHA256"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v7}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdvy;->zzmht:Lcom/google/android/gms/internal/zzdvy;

    new-instance v5, Lcom/google/android/gms/internal/zzdvy;

    const-string v8, "SHA512"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v9}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/zzdvy;->zzmhu:Lcom/google/android/gms/internal/zzdvy;

    new-instance v8, Lcom/google/android/gms/internal/zzdvy;

    const/4 v10, -0x1

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v12, v10}, Lcom/google/android/gms/internal/zzdvy;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/zzdvy;->zzmhv:Lcom/google/android/gms/internal/zzdvy;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/google/android/gms/internal/zzdvy;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    sget-object v0, Lcom/google/android/gms/internal/zzdvy;->zzmhs:Lcom/google/android/gms/internal/zzdvy;

    aput-object v0, v10, v6

    aput-object v3, v10, v7

    aput-object v5, v10, v9

    aput-object v8, v10, v12

    sput-object v10, Lcom/google/android/gms/internal/zzdvy;->zzmhw:[Lcom/google/android/gms/internal/zzdvy;

    new-instance v0, Lcom/google/android/gms/internal/zzdvz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdvz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdvy;->zzbcn:Lcom/google/android/gms/internal/zzfib;

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

    iput p3, p0, Lcom/google/android/gms/internal/zzdvy;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdvy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdvy;->zzmhw:[Lcom/google/android/gms/internal/zzdvy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdvy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdvy;

    return-object v0
.end method

.method public static zzgl(I)Lcom/google/android/gms/internal/zzdvy;
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
    sget-object p0, Lcom/google/android/gms/internal/zzdvy;->zzmhu:Lcom/google/android/gms/internal/zzdvy;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzdvy;->zzmht:Lcom/google/android/gms/internal/zzdvy;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/zzdvy;->zzmhs:Lcom/google/android/gms/internal/zzdvy;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzdvy;->zzmhr:Lcom/google/android/gms/internal/zzdvy;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/zzdvy;->zzmhq:Lcom/google/android/gms/internal/zzdvy;

    return-object p0
.end method


# virtual methods
.method public final zzhu()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdvy;->zzmhv:Lcom/google/android/gms/internal/zzdvy;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdvy;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
