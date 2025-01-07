.class public final Lcom/google/android/gms/internal/zzdnh;
.super Ljava/lang/Object;


# instance fields
.field public final zzlwk:Lcom/google/android/gms/internal/zzdni;

.field public final zzlwl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdni;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdni;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdnh;->zzlwk:Lcom/google/android/gms/internal/zzdni;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdnh;->zzlwl:Ljava/util/List;

    return-void
.end method
