.class public final Lcom/tencent/bugly/proguard/cv;
.super Lcom/tencent/bugly/proguard/ha;


# static fields
.field public static fU:Z = true


# instance fields
.field public fV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ha;-><init>()V

    sget-boolean v0, Lcom/tencent/bugly/proguard/cv;->fU:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cv;->fV:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "report_with_json"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/proguard/cv;->fU:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/cv;->fV:Z

    :cond_0
    return-void
.end method
