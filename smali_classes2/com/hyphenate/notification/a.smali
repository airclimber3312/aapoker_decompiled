.class final Lcom/hyphenate/notification/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = true

.field private static final b:I


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/notification/a;->c:I

    const v1, -0x666667

    iput v1, p0, Lcom/hyphenate/notification/a;->d:I

    const/high16 v2, -0x22000000

    iput v2, p0, Lcom/hyphenate/notification/a;->e:I

    const/high16 v2, -0x76000000

    iput v2, p0, Lcom/hyphenate/notification/a;->f:I

    iput v0, p0, Lcom/hyphenate/notification/a;->g:I

    iput v1, p0, Lcom/hyphenate/notification/a;->h:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/hyphenate/notification/a;->i:I

    const v0, -0x99999a

    iput v0, p0, Lcom/hyphenate/notification/a;->j:I

    const-string v0, "fakeContentTitle"

    iput-object v0, p0, Lcom/hyphenate/notification/a;->k:Ljava/lang/String;

    const-string v0, "fakeContentText"

    iput-object v0, p0, Lcom/hyphenate/notification/a;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hyphenate/notification/a;->m:I

    iput v0, p0, Lcom/hyphenate/notification/a;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start ->"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/hyphenate/notification/a;
    .locals 1

    new-instance v0, Lcom/hyphenate/notification/a;

    invoke-direct {v0, p0}, Lcom/hyphenate/notification/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/hyphenate/notification/a;->c()Lcom/hyphenate/notification/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)Z
    .locals 0

    invoke-static {p0}, Lcom/hyphenate/notification/a;->b(I)I

    move-result p0

    invoke-static {p0}, Lcom/hyphenate/notification/a;->c(I)Z

    move-result p0

    return p0
.end method

.method private a(Landroid/widget/RemoteViews;)Z
    .locals 7

    const-string v0, "fetchNotificationTextColorByText"

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    const-string v0, "ByText"

    iput-object v0, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    move-object v2, p1

    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "fakeContentTitle"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, "fetchNotificationTextColorByText -> contentTitleTextView -> OK"

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    move-object p1, v4

    goto :goto_0

    :cond_1
    const-string v6, "fakeContentText"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "fetchNotificationTextColorByText -> contentTextTextView -> OK"

    invoke-direct {p0, v2}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    invoke-direct {p0, p1, v2}, Lcom/hyphenate/notification/a;->a(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/hyphenate/notification/a;->m:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/hyphenate/notification/a;->n:I

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "checkAndGuessColor-> beforeGuess->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    iget p1, p0, Lcom/hyphenate/notification/a;->m:I

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/hyphenate/notification/a;->n:I

    if-eqz v0, :cond_2

    return p2

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/hyphenate/notification/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, -0x666667

    goto :goto_0

    :cond_3
    const p1, -0x99999a

    :goto_0
    iput p1, p0, Lcom/hyphenate/notification/a;->n:I

    return p2

    :cond_4
    iget p1, p0, Lcom/hyphenate/notification/a;->n:I

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/hyphenate/notification/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    goto :goto_1

    :cond_5
    const/high16 p1, -0x1000000

    :goto_1
    iput p1, p0, Lcom/hyphenate/notification/a;->m:I

    return p2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private static b(I)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "fakeContentTitle"

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v1, "fakeContentText"

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v1, "fackTicker"

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v1, 0x108008a

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NotifTxtColorCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/widget/RemoteViews;)Z
    .locals 4

    const-string v0, "systemNotificationContentId -> #"

    const-string v1, "fetchNotificationTextColorById"

    invoke-direct {p0, v1}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    const-string v1, "ById"

    iput-object v1, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    :try_start_0
    const-string v1, "text"

    invoke-static {v1}, Lcom/hyphenate/notification/a;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/hyphenate/notification/a;->a(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static c(I)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/widget/RemoteViews;)Z
    .locals 6

    const-string v0, "ByAnyTextView"

    iput-object v0, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/notification/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    iput p1, p0, Lcom/hyphenate/notification/a;->m:I

    const p1, -0x666667

    iput p1, p0, Lcom/hyphenate/notification/a;->n:I

    goto :goto_2

    :cond_3
    const/high16 p1, -0x22000000

    iput p1, p0, Lcom/hyphenate/notification/a;->m:I

    const/high16 p1, -0x76000000

    iput p1, p0, Lcom/hyphenate/notification/a;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0
.end method

.method private i()V
    .locals 1

    const-string v0, "BySdkVersion"

    iput-object v0, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    const/high16 v0, -0x22000000

    iput v0, p0, Lcom/hyphenate/notification/a;->m:I

    const/high16 v0, -0x76000000

    iput v0, p0, Lcom/hyphenate/notification/a;->n:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/a;->m:I

    return v0
.end method

.method public a(Landroid/widget/RemoteViews;I)Lcom/hyphenate/notification/a;
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/a;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object p0
.end method

.method public varargs a(Landroid/widget/RemoteViews;[I)Lcom/hyphenate/notification/a;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget v3, p0, Lcom/hyphenate/notification/a;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/a;->n:I

    return v0
.end method

.method public b(Landroid/widget/RemoteViews;I)Lcom/hyphenate/notification/a;
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/a;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object p0
.end method

.method public varargs b(Landroid/widget/RemoteViews;[I)Lcom/hyphenate/notification/a;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget v3, p0, Lcom/hyphenate/notification/a;->n:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c()Lcom/hyphenate/notification/a;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->a(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->c(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hyphenate/notification/a;->i()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Lcom/hyphenate/notification/a;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->a(Landroid/widget/RemoteViews;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public e()Lcom/hyphenate/notification/a;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/widget/RemoteViews;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public f()Lcom/hyphenate/notification/a;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/a;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->c(Landroid/widget/RemoteViews;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public g()Lcom/hyphenate/notification/a;
    .locals 2

    invoke-direct {p0}, Lcom/hyphenate/notification/a;->i()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/notification/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationTextColorCompat."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/notification/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncontentTitleColor=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/a;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncontentTextColor=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/a;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
