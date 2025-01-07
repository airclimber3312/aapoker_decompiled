.class public final Lcom/tencent/bugly/proguard/mn;
.super Lcom/tencent/bugly/proguard/mk;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final Ag:I

.field public Ah:J

.field cP:Ljava/lang/String;

.field public data:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/mk;-><init>()V

    iput p1, p0, Lcom/tencent/bugly/proguard/mn;->Ag:I

    iput p2, p0, Lcom/tencent/bugly/proguard/mn;->ri:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/mn;->Ad:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/mk;-><init>()V

    iput p1, p0, Lcom/tencent/bugly/proguard/mn;->Ag:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/mn;->data:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/mn;->cP:Ljava/lang/String;

    return-void
.end method

.method public static a(IILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/mn;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/bugly/proguard/mn;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static d(II)Lcom/tencent/bugly/proguard/mn;
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/mn;

    const-string v1, ""

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/bugly/proguard/mn;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FdLeakDumpResult{errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/mn;->ri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dumpFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/mn;->cP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/mn;->Ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
