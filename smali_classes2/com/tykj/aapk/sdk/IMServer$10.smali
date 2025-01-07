.class Lcom/tykj/aapk/sdk/IMServer$10;
.super Lcom/tencent/imsdk/v2/V2TIMGroupListener;
.source "IMServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->ApplyJoinGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$10;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMemberEnter(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
