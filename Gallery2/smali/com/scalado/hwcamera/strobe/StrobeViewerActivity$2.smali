.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "StrobeViewerActivity"

    const-string v1, "show spinner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$2;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mProgressSpinner:Landroid/view/View;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_0
    return-void
.end method
