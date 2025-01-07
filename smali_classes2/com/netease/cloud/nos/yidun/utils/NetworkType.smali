.class public Lcom/netease/cloud/nos/yidun/utils/NetworkType;
.super Ljava/lang/Object;
.source "NetworkType.java"


# instance fields
.field private chunkSize:I

.field private networkType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 10
    iput v0, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->chunkSize:I

    .line 18
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getChunkSize()I

    move-result p1

    iput p1, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->chunkSize:I

    return-void
.end method

.method public static getFastMobileNetwork(Landroid/content/Context;)Lcom/netease/cloud/nos/yidun/utils/NetworkType;
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const-string v1, "2g"

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const-string v0, "3g/4g"

    packed-switch p0, :pswitch_data_0

    .line 45
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    invoke-direct {p0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 46
    :pswitch_0
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 60
    :pswitch_1
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const/high16 v1, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 61
    :pswitch_2
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const v1, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 62
    :pswitch_3
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const/16 v0, 0x1000

    invoke-direct {p0, v1, v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    invoke-direct {p0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetWorkType(Landroid/content/Context;)Lcom/netease/cloud/nos/yidun/utils/NetworkType;
    .locals 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const-string v0, "wifi"

    const/high16 v1, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    const-string v1, "MOBILE"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->getFastMobileNetwork(Landroid/content/Context;)Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->chunkSize:I

    return v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->networkType:Ljava/lang/String;

    return-object v0
.end method
