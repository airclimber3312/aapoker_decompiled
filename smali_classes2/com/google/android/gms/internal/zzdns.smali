.class final Lcom/google/android/gms/internal/zzdns;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/google/android/gms/internal/zzdnr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdnx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdnx;-><init>()V

    return-object v0
.end method
