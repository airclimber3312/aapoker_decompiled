.class public final Lcom/unity3d/player/i;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/i$a;
    }
.end annotation


# static fields
.field private static d:I = 0x61000000

.field private static e:I = -0x1


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/unity3d/player/UnityPlayer;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZZ)V
    .locals 13

    move-object v9, p0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    iput-object v0, v9, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    move-object v0, p2

    iput-object v0, v9, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    move/from16 v1, p11

    iput-boolean v1, v9, Lcom/unity3d/player/i;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/unity3d/player/i;->createSoftInputView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/unity3d/player/i;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v1, v9, Lcom/unity3d/player/i;->a:Z

    if-nez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    invoke-static {}, Lcom/unity3d/player/i$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/i;->a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v0

    iput v0, v9, Lcom/unity3d/player/i;->f:I

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->a(Z)V

    iget-object v0, v9, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/i$1;

    invoke-direct {v1, p0, v10}, Lcom/unity3d/player/i$1;-><init>(Lcom/unity3d/player/i;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/unity3d/player/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private static a(IZZZ)I
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x8000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x80000

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/high16 p2, 0x20000

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x80

    :cond_2
    or-int/2addr p1, v0

    if-ltz p0, :cond_5

    const/16 p2, 0xb

    if-le p0, p2, :cond_3

    goto :goto_2

    :cond_3
    const/16 p2, 0xc

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    aget p0, p2, p0

    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_4

    return p0

    :cond_4
    or-int/2addr p0, p1

    return p0

    :cond_5
    :goto_2
    return p1

    nop

    :array_0
    .array-data 4
        0x1
        0x4001
        0x3002
        0x11
        0x2
        0x3
        0x2061
        0x21
        0x1
        0x4021
        0x11
        0x2002
    .end array-data
.end method

.method static synthetic a(Lcom/unity3d/player/i;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V
    .locals 1

    sget v0, Lcom/unity3d/player/i;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget p2, Lcom/unity3d/player/i;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-static {p3, p4, p5, p6}, Lcom/unity3d/player/i;->a(IZZZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 p2, 0x2000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p2, 0x1

    if-lez p8, :cond_0

    new-array p3, p2, [Landroid/text/InputFilter;

    new-instance p4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p4, p8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/i;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object v0, p0, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/i;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/i;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/player/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_0
    new-array p1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 2

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr p2, p1

    if-lt v1, p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/unity3d/player/i;->g:Z

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {}, Lcom/unity3d/player/i$a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {}, Lcom/unity3d/player/i$a;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x1

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x10

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p1

    iget-object v1, p0, Lcom/unity3d/player/i;->c:Lcom/unity3d/player/UnityPlayer;

    sub-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputSelection(II)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final createSoftInputView()Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/unity3d/player/i;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lcom/unity3d/player/i$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Lcom/unity3d/player/i$2;

    iget-object v3, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/unity3d/player/i$2;-><init>(Lcom/unity3d/player/i;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/unity3d/player/i$a;->b()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unity3d/player/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "string"

    const-string v7, "android"

    const-string v8, "ok"

    invoke-virtual {v3, v8, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/unity3d/player/i$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/unity3d/player/i$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/unity3d/player/i$3;

    invoke-direct {v2, p0}, Lcom/unity3d/player/i$3;-><init>(Lcom/unity3d/player/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/i;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/i;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/unity3d/player/i;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/i;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
