<h1>Book Wish List </h1>
<table>
    <tr>
        <th></th>
        <th>Book Name</th>
        <th>Description</th>
    </tr>
<?php foreach ($items as $item): ?>
    <tr>
        <td><a href="/edit.php?id=<?= $item->getId() ?>">edit</a></td>
        <td><?= $item->getName() ?></td>
        <td><?= $item->getDescription() ?></td>
    </tr>
<?php endforeach; ?>
</table>
<p><a href="/add.php">add new book</a></p>
