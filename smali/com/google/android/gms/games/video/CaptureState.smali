.class public final Lcom/google/android/gms/games/video/CaptureState;
.super Ljava/lang/Object;


# instance fields
.field private final zzarz:Z

.field private final zzfbr:Z

.field private final zziin:Z

.field private final zziio:I

.field private final zziip:I


# direct methods
.method private constructor <init>(ZIIZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p3, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/CaptureState;->zziin:Z

    iput p2, p0, Lcom/google/android/gms/games/video/CaptureState;->zziio:I

    iput p3, p0, Lcom/google/android/gms/games/video/CaptureState;->zziip:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/video/CaptureState;->zzfbr:Z

    iput-boolean p5, p0, Lcom/google/android/gms/games/video/CaptureState;->zzarz:Z

    return-void
.end method

.method public static zzq(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;
    .locals 8

    if-eqz p0, :cond_1

    const-string v0, "IsCapturing"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/video/CaptureState;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "CaptureMode"

    const/4 v4, -0x1

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "CaptureQuality"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "IsOverlayVisible"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v4, "IsPaused"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object v2, v1

    move v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/video/CaptureState;-><init>(ZIIZZ)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getCaptureMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zziio:I

    return v0
.end method

.method public final getCaptureQuality()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zziip:I

    return v0
.end method

.method public final isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zziin:Z

    return v0
.end method

.method public final isOverlayVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzfbr:Z

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzarz:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zziin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsCapturing"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zziio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CaptureMode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zziip:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CaptureQuality"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zzfbr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsOverlayVisible"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zzarz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsPaused"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
