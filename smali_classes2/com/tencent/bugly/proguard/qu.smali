.class public final Lcom/tencent/bugly/proguard/qu;
.super Lcom/tencent/bugly/proguard/bs;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qu$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u00012\u00020\u0002:\u0001\u001aB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J$\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0012\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/tencent/rmonitor/sla/AttaEventReportTask;",
        "Lcom/tencent/bugly/common/reporter/upload/QAPMUpload;",
        "Ljava/lang/Runnable;",
        "url",
        "Ljava/net/URL;",
        "eventList",
        "",
        "Lcom/tencent/rmonitor/sla/AttaEvent;",
        "(Ljava/net/URL;Ljava/util/List;)V",
        "buildAttaBody",
        "",
        "buildAttaBodyInternal",
        "",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "key",
        "value",
        "dealValue",
        "getFormatTime",
        "timeInMillis",
        "",
        "report",
        "",
        "request",
        "run",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final Ht:Ljava/text/SimpleDateFormat;

.field public static final Hu:Lcom/tencent/bugly/proguard/qu$a;


# instance fields
.field private final Hs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/qu$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qu$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/qu;->Hu:Lcom/tencent/bugly/proguard/qu$a;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tencent/bugly/proguard/qu;->Ht:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/bs;-><init>(Ljava/net/URL;)V

    iput-object p2, p0, Lcom/tencent/bugly/proguard/qu;->Hs:Ljava/util/List;

    return-void
.end method

.method private static H(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x12c

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/qs;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->appVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->hq:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_name"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GJ:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_bundle_id"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->appKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_key"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "client_type"

    iget-object v5, v3, Lcom/tencent/bugly/proguard/qs;->GK:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->userId:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sdk_version"

    iget-object v5, v3, Lcom/tencent/bugly/proguard/qs;->bD:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "event_code"

    iget-object v5, v3, Lcom/tencent/bugly/proguard/qs;->He:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/tencent/bugly/proguard/qs;->GN:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_result"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/qs;->dw:J

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/qu;->q(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_time"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/tencent/bugly/proguard/qs;->GO:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_cost"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/tencent/bugly/proguard/qs;->ri:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error_code"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/qs;->fw:J

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/qu;->q(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upload_time"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->K:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_id"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->cD:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GL:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "manufacturer"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->bx:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "model"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/tencent/bugly/proguard/qs;->GP:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "debug"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->vd:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "product_id"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GM:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "full_os_version"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GQ:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_0"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GR:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_1"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GS:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_2"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GT:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_3"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GU:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_4"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GV:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_5"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GW:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_6"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GX:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_7"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GY:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_8"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->GZ:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_9"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->Ha:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_10"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->Hb:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_11"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/qs;->Hc:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "param_12"

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/tencent/bugly/proguard/qs;->Hd:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/qu;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "param_13"

    invoke-static {v0, v4, v3}, Lcom/tencent/bugly/proguard/qu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_1
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "attaid"

    const-string v3, "08e00055686"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    const-string v3, "8666841551"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v3, "batch"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v3, "v1.0.0"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "datas"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_sla_AttaEventReportTask"

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "="

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static ca(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    const-string v1, "$"

    const-string v2, "\\$"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cm;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static q(J)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcom/tencent/bugly/proguard/qu;->Ht:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIME_FORMAT.format(date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_sla_AttaEventReportTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "getFormatTime"

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final je()Z
    .locals 13

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qu;->Hs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "RMonitor_sla_AttaEventReportTask"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "event list is empty"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "network not available"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    aput-object v1, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "atta report url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/bs;->url:Ljava/net/URL;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "application/x-www-form-urlencoded"

    const-string v7, "Content-Type"

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Atta-Type"

    const-string v8, "batch-report"

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x7530

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/bugly/proguard/bs;->a(Ljava/util/HashMap;II)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/qu;->Hs:Ljava/util/List;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/qu;->H(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v1, v8, v2

    const-string v9, "atta report data:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v5, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    if-eqz v4, :cond_4

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v8, v5

    check-cast v8, Ljava/io/DataOutputStream;

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const-string v10, "Charset.forName(charsetName)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const-string v10, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    move-object v9, v5

    check-cast v9, Ljava/io/BufferedInputStream;

    sget-object v10, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    check-cast v9, Ljava/io/InputStream;

    const-string v10, "inputStream"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v10}, Lcom/tencent/bugly/proguard/ku$a;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc8

    if-ne v5, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "atta report respCode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", contentLen: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contentType: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", body: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v10, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v2, v8

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_2
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v3

    :try_start_9
    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v4, v1, v3}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_5
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return v2
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/qu;->je()Z

    return-void
.end method
