.class final Lcom/google/android/gms/internal/zzeoi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zznqh:I = 0x1

.field public static final enum zznqi:I = 0x2

.field public static final enum zznqj:I = 0x3

.field public static final enum zznqk:I = 0x4

.field public static final enum zznql:I = 0x5

.field private static final synthetic zznqm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v3

    aput v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/zzeoi;->zznqm:[I

    return-void
.end method

.method public static values$50KLMJ33DTMIUPRFDTJMOP9FCPKN4PB2C5PMABR4C5Q62OJ1EDIIUT3LC9IN6RR3DCNLEPB2ADNM6QR5EGI56T31EHIJM___0()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeoi;->zznqm:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
