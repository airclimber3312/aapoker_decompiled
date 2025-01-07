.class Lcom/tykj/aapk/sdk/PhoneInfoService$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/PhoneInfoService;->SetSignalLinten()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/PhoneInfoService;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/PhoneInfoService;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/tykj/aapk/sdk/PhoneInfoService$1;->this$0:Lcom/tykj/aapk/sdk/PhoneInfoService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5

    const-string v0, "4G-dbm: "

    .line 164
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDbm"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 168
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 169
    sget-object v1, Lcom/tykj/aapk/sdk/PhoneInfoService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sput p1, Lcom/tykj/aapk/sdk/PhoneInfoService;->netDbm:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    sget-object p1, Lcom/tykj/aapk/sdk/PhoneInfoService;->TAG:Ljava/lang/String;

    const-string v0, "onSignalStrengthsChanged: \u83b7\u53d64G\u4fe1\u53f7\u5f3a\u5ea6\u503c\u5931\u8d25"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x8c

    .line 176
    sput p1, Lcom/tykj/aapk/sdk/PhoneInfoService;->netDbm:I

    :goto_0
    return-void
.end method
