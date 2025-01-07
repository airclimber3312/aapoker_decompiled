.class final synthetic Lcom/google/android/gms/internal/zzbqj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqc;


# instance fields
.field private final zzgwg:Lcom/google/android/gms/internal/zzbqg;

.field private final zzgwj:Lcom/google/android/gms/internal/zzbrx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqg;Lcom/google/android/gms/internal/zzbrx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqj;->zzgwg:Lcom/google/android/gms/internal/zzbqg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqj;->zzgwj:Lcom/google/android/gms/internal/zzbrx;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqj;->zzgwg:Lcom/google/android/gms/internal/zzbqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqj;->zzgwj:Lcom/google/android/gms/internal/zzbrx;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbqg;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method
