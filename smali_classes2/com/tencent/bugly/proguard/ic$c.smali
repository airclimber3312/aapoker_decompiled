.class final Lcom/tencent/bugly/proguard/ic$c;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ic;->i(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic uX:Landroid/database/Cursor;

.field final synthetic vk:Lcom/tencent/bugly/proguard/ii;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ii;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/ii;->id:I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "process_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026dex(COLUMN_PROCESS_NAME))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "process_launch_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026OLUMN_PROCESS_LAUNCH_ID))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "launch_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026       COLUMN_LAUNCH_ID))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aN(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026            COLUMN_TYPE))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "host"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026ColumnIndex(COLUMN_HOST))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->setHost(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "front_state"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026ndex(COLUMN_FRONT_STATE))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "net_state"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026nIndex(COLUMN_NET_STATE))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "rx"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/ii;->vH:I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "tx"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/ii;->vI:I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026ndex(COLUMN_APP_VERSION))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v2, "hot_patch_num"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026ex(COLUMN_HOT_PATCH_NUM))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->aT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ic$c;->vk:Lcom/tencent/bugly/proguard/ii;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ic$c;->uX:Landroid/database/Cursor;

    const-string v3, "user_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ii;->i(Lorg/json/JSONObject;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
