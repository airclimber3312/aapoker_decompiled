.class public Lcom/google/android/gms/drive/ExecutionOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/ExecutionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected zzgqg:Ljava/lang/String;

.field protected zzgqh:Z

.field protected zzgqi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqi:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzapr()V

    new-instance v0, Lcom/google/android/gms/drive/ExecutionOptions;

    iget-object v1, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqg:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqh:Z

    iget v3, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqi:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqi:I

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized value for conflict strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqh:Z

    return-object p0
.end method

.method public setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqg:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "trackingTag must not be null nor empty, and the length must be <= the maximum length (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zzapr()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqi:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzgqh:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
