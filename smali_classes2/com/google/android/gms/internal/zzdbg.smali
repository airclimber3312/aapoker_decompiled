.class final Lcom/google/android/gms/internal/zzdbg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkyg:Lcom/google/android/gms/internal/zzdbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbg;->zzkyg:Lcom/google/android/gms/internal/zzdbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbg;->zzkyg:Lcom/google/android/gms/internal/zzdbe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdbe;->zza(Lcom/google/android/gms/internal/zzdbe;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbg;->zzkyg:Lcom/google/android/gms/internal/zzdbe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbe;->zze(Lcom/google/android/gms/internal/zzdbe;)Lcom/google/android/gms/internal/zzdac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdac;->dispatch()V

    return-void
.end method
