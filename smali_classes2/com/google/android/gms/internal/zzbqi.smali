.class final synthetic Lcom/google/android/gms/internal/zzbqi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqc;


# instance fields
.field private final zzgwi:Lcom/google/android/gms/internal/zzbsb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqi;->zzgwi:Lcom/google/android/gms/internal/zzbsb;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzgwi:Lcom/google/android/gms/internal/zzbsb;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    iget-wide v1, v0, Lcom/google/android/gms/internal/zzbsb;->zzgxf:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/zzbsb;->zzgxg:J

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onProgress(JJ)V

    return-void
.end method
