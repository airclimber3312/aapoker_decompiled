.class final Lcom/google/android/gms/internal/zzefb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefh;


# instance fields
.field private synthetic zznbc:Lcom/google/android/gms/internal/zzefo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefb;->zznbc:Lcom/google/android/gms/internal/zzefo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzal(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzefb;->zznbc:Lcom/google/android/gms/internal/zzefo;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
