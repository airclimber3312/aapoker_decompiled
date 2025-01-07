.class public final Lcom/google/android/gms/internal/zzdjw;
.super Lcom/google/android/gms/internal/zzdjq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzdjq<",
        "Lcom/google/android/gms/internal/zzdjq<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final zzlcw:Lcom/google/android/gms/internal/zzdjw;

.field public static final zzlcx:Lcom/google/android/gms/internal/zzdjw;

.field public static final zzlcy:Lcom/google/android/gms/internal/zzdjw;

.field public static final zzlcz:Lcom/google/android/gms/internal/zzdjw;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzlda:Z

.field private final zzldb:Lcom/google/android/gms/internal/zzdjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdjw;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdjw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdjw;->zzlcw:Lcom/google/android/gms/internal/zzdjw;

    new-instance v0, Lcom/google/android/gms/internal/zzdjw;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdjw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdjw;->zzlcx:Lcom/google/android/gms/internal/zzdjw;

    new-instance v0, Lcom/google/android/gms/internal/zzdjw;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdjw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdjw;->zzlcy:Lcom/google/android/gms/internal/zzdjw;

    new-instance v0, Lcom/google/android/gms/internal/zzdjw;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdjw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdjq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdjq;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjw;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdjw;->zzlda:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjw;->zzldb:Lcom/google/android/gms/internal/zzdjq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdjq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjw;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdjw;->zzlda:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjw;->zzldb:Lcom/google/android/gms/internal/zzdjq;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjw;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic value()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjw;->zzldb:Lcom/google/android/gms/internal/zzdjq;

    return-object v0
.end method

.method public final zzbkq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdjw;->zzlda:Z

    return v0
.end method
