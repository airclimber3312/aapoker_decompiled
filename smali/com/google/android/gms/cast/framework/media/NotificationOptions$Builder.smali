.class public final Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzfeg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfeh:[I

.field private zzfei:J

.field private zzfej:Ljava/lang/String;

.field private zzfek:I

.field private zzfel:I

.field private zzfem:I

.field private zzfen:I

.field private zzfeo:I

.field private zzfep:I

.field private zzfeq:I

.field private zzfer:I

.field private zzfes:I

.field private zzfet:I

.field private zzfeu:I

.field private zzfev:I

.field private zzfew:I

.field private zzffm:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzafj()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeg:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzafk()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeh:[I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_small_icon:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfek:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_stop_live_stream:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfel:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_pause:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfem:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_play:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfen:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_skip_next:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeo:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_skip_prev:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfep:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeq:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfer:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_forward30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfes:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfet:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeu:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_rewind30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfev:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_disconnect:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfew:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfei:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzffm:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->zzafi()Lcom/google/android/gms/cast/framework/media/zzf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/media/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    move-object/from16 v35, v1

    new-instance v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-object v2, v1

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeg:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeh:[I

    iget-wide v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfei:J

    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfej:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfek:I

    iget v9, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfel:I

    iget v10, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfem:I

    iget v11, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfen:I

    iget v12, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeo:I

    iget v13, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfep:I

    iget v14, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeq:I

    iget v15, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfer:I

    move-object/from16 v36, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfes:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfet:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeu:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfev:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfew:I

    move/from16 v20, v1

    sget v21, Lcom/google/android/gms/R$dimen;->cast_notification_image_size:I

    sget v22, Lcom/google/android/gms/R$string;->cast_casting_to_device:I

    sget v23, Lcom/google/android/gms/R$string;->cast_stop_live_stream:I

    sget v24, Lcom/google/android/gms/R$string;->cast_pause:I

    sget v25, Lcom/google/android/gms/R$string;->cast_play:I

    sget v26, Lcom/google/android/gms/R$string;->cast_skip_next:I

    sget v27, Lcom/google/android/gms/R$string;->cast_skip_prev:I

    sget v28, Lcom/google/android/gms/R$string;->cast_forward:I

    sget v29, Lcom/google/android/gms/R$string;->cast_forward_10:I

    sget v30, Lcom/google/android/gms/R$string;->cast_forward_30:I

    sget v31, Lcom/google/android/gms/R$string;->cast_rewind:I

    sget v32, Lcom/google/android/gms/R$string;->cast_rewind_10:I

    sget v33, Lcom/google/android/gms/R$string;->cast_rewind_30:I

    sget v34, Lcom/google/android/gms/R$string;->cast_disconnect:I

    invoke-direct/range {v2 .. v35}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V

    return-object v36
.end method

.method public final setActions(Ljava/util/List;[I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;"
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "When setting actions to null, you must also set compatActionIndices to null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "When setting compatActionIndices to null, you must also set actions to null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v0, :cond_6

    array-length v1, p2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_5

    aget v6, p2, v5

    if-ltz v6, :cond_4

    if-ge v6, v0, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Index %d in compatActionIndices out of range: [0, %d]"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeg:Ljava/util/List;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeh:[I

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    const-string p2, "Invalid number of compat actions: %d > %d."

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzafj()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeg:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzafk()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeh:[I

    :goto_3
    return-object p0
.end method

.method public final setDisconnectDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfew:I

    return-object p0
.end method

.method public final setForward10DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfer:I

    return-object p0
.end method

.method public final setForward30DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfes:I

    return-object p0
.end method

.method public final setForwardDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeq:I

    return-object p0
.end method

.method public final setNotificationActionsProvider(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzffm:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "notificationActionsProvider cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPauseDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfem:I

    return-object p0
.end method

.method public final setPlayDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfen:I

    return-object p0
.end method

.method public final setRewind10DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeu:I

    return-object p0
.end method

.method public final setRewind30DrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfev:I

    return-object p0
.end method

.method public final setRewindDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfet:I

    return-object p0
.end method

.method public final setSkipNextDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfeo:I

    return-object p0
.end method

.method public final setSkipPrevDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfep:I

    return-object p0
.end method

.method public final setSkipStepMs(J)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "skipStepMs must be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfei:J

    return-object p0
.end method

.method public final setSmallIconDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfek:I

    return-object p0
.end method

.method public final setStopLiveStreamDrawableResId(I)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfel:I

    return-object p0
.end method

.method public final setTargetActivityClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzfej:Ljava/lang/String;

    return-object p0
.end method
