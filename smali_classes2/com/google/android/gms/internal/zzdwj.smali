.class public final enum Lcom/google/android/gms/internal/zzdwj;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzfia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdwj;",
        ">;",
        "Lcom/google/android/gms/internal/zzfia;"
    }
.end annotation


# static fields
.field private static final zzbcn:Lcom/google/android/gms/internal/zzfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfib<",
            "Lcom/google/android/gms/internal/zzdwj;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzmio:Lcom/google/android/gms/internal/zzdwj;

.field public static final enum zzmip:Lcom/google/android/gms/internal/zzdwj;

.field private static enum zzmiq:Lcom/google/android/gms/internal/zzdwj;

.field private static enum zzmir:Lcom/google/android/gms/internal/zzdwj;

.field public static final enum zzmis:Lcom/google/android/gms/internal/zzdwj;

.field private static final synthetic zzmit:[Lcom/google/android/gms/internal/zzdwj;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzdwj;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdwj;->zzmio:Lcom/google/android/gms/internal/zzdwj;

    new-instance v1, Lcom/google/android/gms/internal/zzdwj;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/zzdwj;->zzmip:Lcom/google/android/gms/internal/zzdwj;

    new-instance v3, Lcom/google/android/gms/internal/zzdwj;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdwj;->zzmiq:Lcom/google/android/gms/internal/zzdwj;

    new-instance v3, Lcom/google/android/gms/internal/zzdwj;

    const-string v5, "DESTROYED"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v7}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdwj;->zzmir:Lcom/google/android/gms/internal/zzdwj;

    new-instance v3, Lcom/google/android/gms/internal/zzdwj;

    const/4 v5, -0x1

    const-string v8, "UNRECOGNIZED"

    const/4 v9, 0x4

    invoke-direct {v3, v8, v9, v5}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdwj;->zzmis:Lcom/google/android/gms/internal/zzdwj;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzdwj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    sget-object v0, Lcom/google/android/gms/internal/zzdwj;->zzmiq:Lcom/google/android/gms/internal/zzdwj;

    aput-object v0, v5, v6

    sget-object v0, Lcom/google/android/gms/internal/zzdwj;->zzmir:Lcom/google/android/gms/internal/zzdwj;

    aput-object v0, v5, v7

    aput-object v3, v5, v9

    sput-object v5, Lcom/google/android/gms/internal/zzdwj;->zzmit:[Lcom/google/android/gms/internal/zzdwj;

    new-instance v0, Lcom/google/android/gms/internal/zzdwk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdwk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdwj;->zzbcn:Lcom/google/android/gms/internal/zzfib;

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

    iput p3, p0, Lcom/google/android/gms/internal/zzdwj;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdwj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdwj;->zzmit:[Lcom/google/android/gms/internal/zzdwj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdwj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdwj;

    return-object v0
.end method

.method public static zzgo(I)Lcom/google/android/gms/internal/zzdwj;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzdwj;->zzmir:Lcom/google/android/gms/internal/zzdwj;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzdwj;->zzmiq:Lcom/google/android/gms/internal/zzdwj;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/zzdwj;->zzmip:Lcom/google/android/gms/internal/zzdwj;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzdwj;->zzmio:Lcom/google/android/gms/internal/zzdwj;

    return-object p0
.end method


# virtual methods
.method public final zzhu()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdwj;->zzmis:Lcom/google/android/gms/internal/zzdwj;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdwj;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
