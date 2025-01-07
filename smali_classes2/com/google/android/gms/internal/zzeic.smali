.class final Lcom/google/android/gms/internal/zzeic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznfw:Lcom/google/android/gms/internal/zzegx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeic;->zznfw:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeic;->zznfw:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegx;->interrupt()V

    return-void
.end method
