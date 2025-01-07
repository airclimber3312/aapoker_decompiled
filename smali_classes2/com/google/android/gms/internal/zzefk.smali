.class final Lcom/google/android/gms/internal/zzefk;
.super Ljava/lang/Object;


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zznbn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznbp:Ljava/lang/String;

.field private final zznbq:Lcom/google/android/gms/internal/zzefo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefk;->zznbp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefk;->zznbn:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefk;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefk;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzefk;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefk;)Lcom/google/android/gms/internal/zzefo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefk;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zznbp:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zznbn:Ljava/util/List;

    return-object v0
.end method

.method public final zzbxc()Lcom/google/android/gms/internal/zzefo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-object v0
.end method
