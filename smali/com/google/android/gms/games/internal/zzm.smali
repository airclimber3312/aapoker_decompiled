.class final synthetic Lcom/google/android/gms/games/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/zzp;


# static fields
.field static final zzhzz:Lcom/google/android/gms/games/internal/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzm;->zzhzz:Lcom/google/android/gms/games/internal/zzp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzai(Lcom/google/android/gms/common/api/Status;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    return p1
.end method
