.class final Lcom/google/android/gms/internal/zzeox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic zznre:Lcom/google/android/gms/internal/zzeow;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeox;->zznre:Lcom/google/android/gms/internal/zzeow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeox;->zznre:Lcom/google/android/gms/internal/zzeow;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeow;->zznrd:Lcom/google/android/gms/internal/zzeou;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzeou;->zzj(Ljava/lang/Throwable;)V

    return-void
.end method
