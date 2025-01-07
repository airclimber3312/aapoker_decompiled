.class public final enum Lcom/google/android/gms/internal/zzdwg$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzfia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdwg$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/zzfia;"
    }
.end annotation


# static fields
.field private static final zzbcn:Lcom/google/android/gms/internal/zzfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfib<",
            "Lcom/google/android/gms/internal/zzdwg$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzmih:Lcom/google/android/gms/internal/zzdwg$zzb;

.field public static final enum zzmii:Lcom/google/android/gms/internal/zzdwg$zzb;

.field public static final enum zzmij:Lcom/google/android/gms/internal/zzdwg$zzb;

.field public static final enum zzmik:Lcom/google/android/gms/internal/zzdwg$zzb;

.field public static final enum zzmil:Lcom/google/android/gms/internal/zzdwg$zzb;

.field public static final enum zzmim:Lcom/google/android/gms/internal/zzdwg$zzb;

.field private static final synthetic zzmin:[Lcom/google/android/gms/internal/zzdwg$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/internal/zzdwg$zzb;

    const-string v1, "UNKNOWN_KEYMATERIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmih:Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzdwg$zzb;

    const-string v3, "SYMMETRIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmii:Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v3, Lcom/google/android/gms/internal/zzdwg$zzb;

    const-string v5, "ASYMMETRIC_PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmij:Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v5, Lcom/google/android/gms/internal/zzdwg$zzb;

    const-string v7, "ASYMMETRIC_PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmik:Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v7, Lcom/google/android/gms/internal/zzdwg$zzb;

    const-string v9, "REMOTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmil:Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v9, Lcom/google/android/gms/internal/zzdwg$zzb;

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/google/android/gms/internal/zzdwg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmim:Lcom/google/android/gms/internal/zzdwg$zzb;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/zzdwg$zzb;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmin:[Lcom/google/android/gms/internal/zzdwg$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzdwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdwi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzbcn:Lcom/google/android/gms/internal/zzfib;

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

    iput p3, p0, Lcom/google/android/gms/internal/zzdwg$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdwg$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmin:[Lcom/google/android/gms/internal/zzdwg$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdwg$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object v0
.end method

.method public static zzgn(I)Lcom/google/android/gms/internal/zzdwg$zzb;
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
    sget-object p0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmil:Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmik:Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmij:Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmii:Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmih:Lcom/google/android/gms/internal/zzdwg$zzb;

    return-object p0
.end method


# virtual methods
.method public final zzhu()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdwg$zzb;->zzmim:Lcom/google/android/gms/internal/zzdwg$zzb;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdwg$zzb;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
