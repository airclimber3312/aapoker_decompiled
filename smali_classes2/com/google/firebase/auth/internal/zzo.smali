.class public final Lcom/google/firebase/auth/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/ProviderQueryResult;


# instance fields
.field private zzmts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzebs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebs;->getAllProviders()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zzmts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzmts:Ljava/util/List;

    return-object v0
.end method
