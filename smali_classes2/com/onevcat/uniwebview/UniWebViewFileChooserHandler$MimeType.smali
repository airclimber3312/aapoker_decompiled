.class final enum Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;
.super Ljava/lang/Enum;
.source "UniWebViewFileChooserHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "DEFAULT",
        "IMAGE",
        "VIDEO",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

.field public static final enum DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

.field public static final enum IMAGE:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

.field public static final enum VIDEO:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->IMAGE:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->VIDEO:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 188
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    const/4 v1, 0x0

    const-string v2, "*/*"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    const/4 v1, 0x1

    const-string v2, "image"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->IMAGE:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    const/4 v1, 0x2

    const-string v2, "video"

    const-string v3, "VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->VIDEO:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->$values()[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    move-result-object v0

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->$VALUES:[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;
    .locals 1

    const-class v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    return-object p0
.end method

.method public static values()[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;
    .locals 1

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->$VALUES:[Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->value:Ljava/lang/String;

    return-object v0
.end method
