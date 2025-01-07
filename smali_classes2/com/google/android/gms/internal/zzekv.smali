.class final Lcom/google/android/gms/internal/zzekv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzeko;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzekp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    check-cast p2, Lcom/google/android/gms/internal/zzeko;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzeko;->zznks:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/zzeko;->zznks:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzepd;->zzi(JJ)I

    move-result p1

    return p1
.end method
