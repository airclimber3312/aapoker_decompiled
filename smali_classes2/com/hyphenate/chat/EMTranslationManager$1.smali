.class Lcom/hyphenate/chat/EMTranslationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMTranslationManager;->init(Lcom/hyphenate/chat/EMTranslateParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMTranslationManager;

.field final synthetic val$params:Lcom/hyphenate/chat/EMTranslateParams;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslateParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->val$params:Lcom/hyphenate/chat/EMTranslateParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMTranslationManager;->access$000(Lcom/hyphenate/chat/EMTranslationManager;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->val$params:Lcom/hyphenate/chat/EMTranslateParams;

    iget v1, v1, Lcom/hyphenate/chat/EMTranslateParams;->LoadCount:I

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMTranslationManager;->access$100(Lcom/hyphenate/chat/EMTranslationManager;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMTranslationManager;->access$200(Lcom/hyphenate/chat/EMTranslationManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    new-instance v1, Lcom/hyphenate/chat/EMTranslator;

    iget-object v2, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->val$params:Lcom/hyphenate/chat/EMTranslateParams;

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/EMTranslator;-><init>(Lcom/hyphenate/chat/EMTranslateParams;)V

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMTranslationManager;->access$302(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslator;)Lcom/hyphenate/chat/EMTranslator;

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$1;->this$0:Lcom/hyphenate/chat/EMTranslationManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMTranslationManager;->access$300(Lcom/hyphenate/chat/EMTranslationManager;)Lcom/hyphenate/chat/EMTranslator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMTranslator;->getSupportedLanguages()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMTranslationManager;->access$402(Lcom/hyphenate/chat/EMTranslationManager;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
