.class final Lcom/google/android/gms/internal/zzein;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeio;


# instance fields
.field private synthetic zznhp:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznhq:Lcom/google/android/gms/internal/zzeip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeil;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzeip;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzein;->zznhp:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzein;->zznhq:Lcom/google/android/gms/internal/zzeip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzeil;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznhp:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznhq:Lcom/google/android/gms/internal/zzeip;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzeil;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzeip;)V

    return-void
.end method
