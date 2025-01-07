.class public final Lcom/tencent/bugly/proguard/al$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public bq:J

.field public br:J

.field public bs:Ljava/lang/String;

.field public bt:J

.field final synthetic bu:Lcom/tencent/bugly/proguard/al;

.field public count:I

.field public type:I


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/al;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al$a;->bu:Lcom/tencent/bugly/proguard/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al$a;->br:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/bugly/proguard/al$a;->count:I

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al$a;->bt:J

    return-void
.end method


# virtual methods
.method public final O()Lcom/tencent/bugly/proguard/al$a;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al$a;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->br:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/al$a;->br:J

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/bugly/proguard/al$a;->type:I

    iput v1, v0, Lcom/tencent/bugly/proguard/al$a;->type:I

    iget v1, p0, Lcom/tencent/bugly/proguard/al$a;->count:I

    iput v1, v0, Lcom/tencent/bugly/proguard/al$a;->count:I

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->bt:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/al$a;->bt:J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/al$a;->O()Lcom/tencent/bugly/proguard/al$a;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wallTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->bq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cpuTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->br:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgDetail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/al$a;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/al$a;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgEndTimeInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/al$a;->bt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
