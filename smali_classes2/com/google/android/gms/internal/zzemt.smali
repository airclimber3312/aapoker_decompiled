.class final Lcom/google/android/gms/internal/zzemt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzemq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzemq;

    check-cast p2, Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzemq;->zzi(Lcom/google/android/gms/internal/zzemq;)I

    move-result p1

    return p1
.end method
