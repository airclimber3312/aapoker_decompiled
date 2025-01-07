.class public final Lcom/tencent/bugly/proguard/oh;
.super Ljava/lang/Object;


# instance fields
.field public Dj:J

.field public Dk:J

.field public Dl:Z

.field public tT:F

.field public threshold:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/tencent/bugly/proguard/oh;->tT:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dj:J

    const-wide/16 v0, 0x34

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/oh;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/tencent/bugly/proguard/oh;->tT:F

    iput v0, p0, Lcom/tencent/bugly/proguard/oh;->tT:F

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/oh;->threshold:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/oh;->Dj:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dj:J

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/oh;->Dk:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    return-void
.end method

.method public final reset()V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/tencent/bugly/proguard/oh;->tT:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dj:J

    const-wide/16 v0, 0x34

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/oh;->tT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/oh;->Dj:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
